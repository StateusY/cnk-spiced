from beet import (
    Context,
    FileDeserialize,
    JsonFileBase,
    NamespaceFileScope,
    LootTable,
    ItemModel,
    Model,
    Language,
    Advancement,
    Function,
    FunctionTag,
    Texture,
    Font
)
from pydantic import BaseModel, Field
from typing import ClassVar, Literal
from PIL import Image
import logging
import copy

from .blocks import blocks

LOGGER = logging.getLogger(__name__)

# Ingredients that require generic functions in recipes
GENERIC_INGREDIENTS = [
    "spiced:any_grease",
    "spiced:any_vinegar",
    "spiced:any_wine",
    "spiced:any_pepper"
]

COOKBOOK_CATEGORIES = (
    "staple",
    "snacks",
    "light",
    "hearty",
    "feasts",
    "desserts"
)


class Recipe(BaseModel):
    id: str
    name: str
    ingredients: list[str] = Field(min_length=1, max_length=5)
    nutrition: float
    saturation: float
    category: Literal[*COOKBOOK_CATEGORIES] # pyright: ignore[reportInvalidTypeForm]
    tool: Literal[
        "cooking_pot",
        "mixing_bowl",
        "cutting_board",
        "mortar_and_pestle"
    ]
    plateable: bool = False
    quantity: int = None
    loot_table: str = None


class RecipeDefinition(JsonFileBase[Recipe]):
    scope: ClassVar[NamespaceFileScope] = ("spiced_recipe",)
    extension: ClassVar[str] = ".json"
    data: ClassVar[FileDeserialize[Recipe]] = FileDeserialize()
    model = Recipe


def load_recipes(ctx: Context):
    """Loads recipes from the recipe yaml file"""
    ctx.data.extend_namespace.append(RecipeDefinition)
    yield
    ctx.data[RecipeDefinition].clear()


def beet_default(ctx: Context):
    """Entry point for beet"""
    if not ctx.data[RecipeDefinition]:
        LOGGER.error("No recipes found.")
        return

    generate_recipes(ctx)


def generate_recipes(ctx: Context):
    """Generate recipes from json files"""
    current_character = 53248 # \ud000
    for resource_location in ctx.data[RecipeDefinition]:
        recipe = ctx.data[RecipeDefinition][resource_location].data

        # Item and recipe stuff
        generate_texture_files(ctx, recipe)
        add_translation(ctx, recipe)
        add_all_recipes_check(ctx, recipe)

        if not recipe.loot_table:
            # No override, generate loot table
            generate_loot_table(ctx, recipe)

        if recipe.tool == "cooking_pot":
            generate_cooking_pot_check(ctx, recipe)
            generate_cooking_pot_recipe(ctx, recipe)
        elif recipe.tool == "mixing_bowl":
            generate_mixing_bowl_check(ctx, recipe)
            generate_mixing_bowl_recipe(ctx, recipe)
        elif recipe.tool == "cutting_board":
            generate_cutting_board_check(ctx, recipe)
            generate_cutting_board_recipe(ctx, recipe)
        elif recipe.tool == "mortar_and_pestle":
            generate_mortar_and_pestle_check(ctx, recipe)
            generate_mortar_and_pestle_recipe(ctx, recipe)

        # Cookbook stuff
        current_character += 1
        generate_icon_files(ctx, recipe, current_character)
        generate_grant_code(ctx, recipe)
        generate_page_register(ctx, recipe)

        # Fizz stuff
        generate_fizz_trade(ctx, recipe)

    # Order cookbook section tags alphabetically
    order_section_tags(ctx)


def generate_loot_table(ctx: Context, recipe: Recipe):
    """Generate a loot table for a recipe"""
    # Handle feast and placeable data
    spiced_data = {"ingredient":{"type":recipe.id}}
    if recipe.category == "feasts":
        spiced_data["ingredient"]["feasts"] = True
    if recipe.plateable is True:
        spiced_data["placeable"] = {"model":f"spiced:placeable/{recipe.id}"}

    # Handle consume time (default is 1.6)
    consumable = {}
    if recipe.category == "feasts":
        consumable["consume_seconds"] = 2.4
    elif recipe.category == "hearty":
        consumable["consume_seconds"] = 2.0

    ctx.data[f"spiced:food/{recipe.id}"] = LootTable({
        "pools": [
            {
                "rolls": 1,
                "entries": [
                    {
                        "type": "minecraft:item",
                        "name": "minecraft:poisonous_potato",
                        "functions": [
                            {
                                "function": "minecraft:set_components",
                                "components": {
                                    "minecraft:item_name": {"translate":f"item.spiced.{recipe.id}", "fallback":f"{recipe.name}"},
                                    "minecraft:item_model": f"spiced:{recipe.id}",
                                    "minecraft:food": {"nutrition":int(recipe.nutrition), "saturation":recipe.saturation},
                                    "minecraft:consumable": consumable,
                                    "minecraft:custom_data": {"spiced":spiced_data, "smithed":{"ignore":{"functionality":True, "crafting":True}}},
                                    "minecraft:lore": [{"translate":"spiced.tooltip","font":"spiced:tooltip","color":"white","italic":False}]
                                }
                            }
                        ]
                    }
                ]
            }
        ]
    })

    # If the recipe has quantity, generate a drops loot table for it
    if recipe.quantity:
        ctx.data[f"spiced:drops/{recipe.id}"] = LootTable({
            "pools": [
                {
                "rolls": 1,
                "entries": [
                    {
                    "type": "minecraft:loot_table",
                    "value": f"spiced:food/{recipe.id}",
                    "functions": [
                        {
                        "function": "minecraft:set_count",
                        "count": {
                            "type": "minecraft:score",
                            "target": {
                            "type": "minecraft:fixed",
                            "name": "$count"
                            },
                            "score": "cnk.dummy"
                        }
                        }
                    ]
                    }
                ]
                }
            ]
        })


def generate_texture_files(ctx: Context, recipe: Recipe):
    """Generate texture files for a recipe including item model and item definition"""
    ctx.assets[f"spiced:{recipe.id}"] = ItemModel({
        "model": {
            "type": "minecraft:model",
            "model": f"spiced:item/{recipe.id}"
        }
    })

    ctx.assets[f"spiced:item/{recipe.id}"] = Model({
        "parent": "minecraft:item/generated",
        "textures": {
            "layer0": f"spiced:item/{recipe.id}"
        }
    })


def add_translation(ctx: Context, recipe: Recipe):
    """Adds the translation key for a given recipe"""
    lang = ctx.assets.languages["spiced:en_us"].data
    lang[f"item.spiced.{recipe.id}"] = recipe.name
    ctx.assets["spiced:en_us"] = Language(lang)


def add_all_recipes_check(ctx: Context, recipe: Recipe):
    """Adds a check for the recipe to the all recipes advancement"""
    custom_data = {"spiced":{"ingredient":{"type":recipe.id}}}
    if recipe.loot_table:
        custom_data = get_custom_data(ctx, recipe.loot_table)
        if custom_data is None:
            return

    advancement = ctx.data.advancements["spiced:visible/all_recipes"].data
    advancement["criteria"][f"spiced:{recipe.id}"] = {
        "trigger": "minecraft:inventory_changed",
        "conditions": {
            "items": [
            {
                "items": "minecraft:poisonous_potato",
                "predicates": {
                "minecraft:custom_data": custom_data
                }
            }
            ]
        }
    }
    ctx.data["spiced:visible/all_recipes"] = Advancement(advancement)


def generate_cooking_pot_check(ctx: Context, recipe: Recipe):
    """Generate the crafting check for a cooking pot recipe"""
    # Remove duplicates
    ingredients = list(dict.fromkeys(recipe.ingredients))

    recipe_check = "execute "
    for ingredient in ingredients:
        if ingredient in GENERIC_INGREDIENTS:
            # Generic, check how many were in original list
            count = recipe.ingredients.count(ingredient)

            generic = get_generic(ingredient)
            recipe_check += f"if function spiced:cooking_pot/crafting/generic/{generic} if score ${generic}_count cnk.dummy matches {count}.. "
        else:
            # Not generic, add normal check
            ingredient_check = get_ingredient_check(ingredient)
            recipe_check += f"if data storage cnk:temp cooking_pot.Items[{ingredient_check}] "

    # Finish check
    recipe_check += f"if function spiced:cooking_pot/crafting/lock run return run function spiced:recipes/cooking_pot/{recipe.id}"
    
    # Append to function
    crafting_function = ctx.data.functions[f"spiced:cooking_pot/crafting/{len(recipe.ingredients)}"].lines
    crafting_function.append(recipe_check)
    ctx.data[f"spiced:cooking_pot/crafting/{len(recipe.ingredients)}"] = Function(crafting_function)


def generate_cooking_pot_recipe(ctx: Context, recipe: Recipe):
    """Generate the recipe function for a cooking pot recipe"""
    # Remove duplicates
    ingredients = list(dict.fromkeys(recipe.ingredients))

    recipe_function = []
    for ingredient in ingredients:
        if ingredient in GENERIC_INGREDIENTS:
            generic = get_generic(ingredient)
            recipe_function.append(f"function spiced:recipes/remove_generic/{generic}")
        else:
            # Not generic, add normal remove
            ingredient_check = get_ingredient_check(ingredient)
            recipe_function.append(f"data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{ingredient_check}].Slot")
            recipe_function.append("function spiced:recipes/remove with storage cnk:temp cooking_pot")

    # Add spawn of result, if there's quantity use drops
    if recipe.quantity:
        recipe_function.extend([
            f"scoreboard players set $count cnk.dummy {recipe.quantity}",
            f"loot spawn ~ ~0.25 ~ loot spiced:drops/{recipe.id}"
        ])
    else:
        loot_table = f"spiced:food/{recipe.id}"
        if recipe.loot_table:
            # Override loot table
            loot_table = recipe.loot_table
        recipe_function.append(f"loot spawn ~ ~0.25 ~ loot {loot_table}")

    # Finish cooking
    recipe_function.append("function spiced:cooking_pot/effects/finish_cooking")

    # Append to function
    ctx.data[f"spiced:recipes/cooking_pot/{recipe.id}"] = Function(recipe_function)


def generate_mixing_bowl_check(ctx: Context, recipe: Recipe):
    """Generate the crafting check for a mixing bowl recipe"""
    # Start check
    recipe_check = f"execute if score $mixing_bowl_item_count cnk.dummy matches {len(recipe.ingredients)} "

    # Remove duplicates
    ingredients = list(dict.fromkeys(recipe.ingredients))

    # Append checks for each ingredient
    for ingredient in ingredients:
        if ingredient in GENERIC_INGREDIENTS:
            # Generic, check how many were in original list
            count = recipe.ingredients.count(ingredient)

            generic = get_generic(ingredient)
            recipe_check += f"if function spiced:mixing_bowl/mix/generic/{generic} if score ${generic}_count cnk.dummy matches {count}.. "
        else:
            # Not generic, add normal check
            ingredient_check = get_ingredient_check(ingredient)
            recipe_check += f"if data storage cnk:temp mixing_bowl.Items[{ingredient_check}] "

    # Finish check
    recipe_check += f"if function spiced:mixing_bowl/mix/lock run return run data modify entity @s item.components.'minecraft:custom_data'.cnk.mix_callback set value 'spiced:recipes/mixing_bowl/{recipe.id}'"
    
    # Append to function
    crafting_function = ctx.data.functions["spiced:mixing_bowl/mix/recipes"].lines
    crafting_function.append(recipe_check)
    ctx.data["spiced:mixing_bowl/mix/recipes"] = Function(crafting_function)


def generate_mixing_bowl_recipe(ctx: Context, recipe: Recipe):
    """Generate the recipe function for a mixing bowl recipe"""
    recipe_function = []

    # Add spawn of result, if there's quantity use drops
    if recipe.quantity:
        recipe_function.extend([
            f"scoreboard players set $count cnk.dummy {recipe.quantity}",
            f"loot spawn ~ ~-0.3 ~ loot spiced:drops/{recipe.id}"
        ])
    else:
        loot_table = f"spiced:food/{recipe.id}"
        if recipe.loot_table:
            # Override loot table
            loot_table = recipe.loot_table
        recipe_function.append(f"loot spawn ~ ~-0.3 ~ loot {loot_table}")

    # Add byproduct handling
    for ingredient in recipe.ingredients:
        generic = get_generic(ingredient)
        if generic in ["milk", "water", "cooking_oil"]:
            recipe_function.append(f"function cnk:recipes/mixing_bowl/remove_generic/{generic}")

    # Clean up mixing
    recipe_function.append("function cnk:mixing_bowl/mix/clean_up")

    # Append to function
    ctx.data[f"spiced:recipes/mixing_bowl/{recipe.id}"] = Function(recipe_function)


def generate_cutting_board_check(ctx: Context, recipe: Recipe):
    """Generate the crafting check for a cutting board recipe"""
    # Get ingredient
    ingredient_check = get_ingredient_check(recipe.ingredients[0])

    # Append check to function
    crafting_function = ctx.data.functions["spiced:cutting_board/cut/recipes"].lines
    crafting_function.append(f"execute if data storage cnk:temp cutting_board.item{ingredient_check} run return run function spiced:recipes/cutting_board/{recipe.id}")
    ctx.data["spiced:cutting_board/cut/recipes"] = Function(crafting_function)


def generate_cutting_board_recipe(ctx: Context, recipe: Recipe):
    """Generate the recipe function for a cutting board recipe"""
    recipe_function = []

    # Add spawn of result, if there's quantity use drops
    if recipe.quantity:
        recipe_function.extend([
            f"scoreboard players set $count cnk.dummy {recipe.quantity}",
            f"loot spawn ~ ~-0.3 ~ loot spiced:drops/{recipe.id}"
        ])
    else:
        loot_table = f"spiced:food/{recipe.id}"
        if recipe.loot_table:
            # Override loot table
            loot_table = recipe.loot_table
        recipe_function.append(f"loot spawn ~ ~-0.3 ~ loot {loot_table}")

    recipe_function.append("function cnk:cutting_board/cut/finish")
    ctx.data[f"spiced:recipes/cutting_board/{recipe.id}"] = Function(recipe_function)


def generate_icon_files(ctx: Context, recipe: Recipe, current_character: int):
    """Generate icon files for a recipe including cookbook icon, font character and translation key"""
    # Get item texture
    asset = ctx.assets.textures.get(f"spiced:item/{recipe.id}")
    if not asset:
        LOGGER.error(f"No asset found for recipe {recipe.id}, this recipe will be skipped.")
        return
        
    image = asset.image

    # Apply background for alignment
    background = Image.new("RGBA", image.size, (0, 0, 0, 1))
    icon = Image.alpha_composite(background, image)

    # Create icon
    ctx.assets[f"spiced:icon/item/{recipe.id}"] = Texture(icon)

    # Create character translation key
    lang = ctx.assets.languages["spiced:en_us"].data
    lang[f"book.item.spiced.{recipe.id}"] = chr(current_character)
    ctx.assets["spiced:en_us"] = Language(lang)

    # Add icon to font
    font = ctx.assets.fonts["spiced:icons"].data
    font["providers"].append(
        {
            "type": "bitmap",
            "file": f"spiced:icon/item/{recipe.id}.png",
            "ascent": 15,
            "height": 16,
            "chars": [chr(current_character)],
        }
    )
    ctx.assets["spiced:icons"] = Font(font)


def generate_grant_code(ctx: Context, recipe: Recipe):
    """Generate code for granting a recipe flag to the player"""
    # Generate item advancement
    custom_data = {"spiced":{"ingredient":{"type":recipe.id}}}
    if recipe.loot_table:
        custom_data = get_custom_data(ctx, recipe.loot_table)
        if custom_data is None:
            return

    item_advancement = f"spiced:cookbook/{recipe.id}/item"
    ctx.data[item_advancement] = Advancement({
        "parent": "cnk:cookbook/root",
        "criteria": {
            "requirement": {
            "trigger": "minecraft:inventory_changed",
            "conditions": {
                "items": [
                {
                    "items": "minecraft:poisonous_potato",
                    "predicates": {
                    "minecraft:custom_data": custom_data
                    }
                }
                ]
            }
            }
        },
        "rewards": {
            "function": f"spiced:cookbook/grant/{recipe.id}"
        }
    })

    # Generate toast advancement
    toast_advancement = f"spiced:cookbook/{recipe.id}/toast"
    ctx.data[toast_advancement] = Advancement({
        "parent": "cnk:cookbook/toasts",
        "display": {
            "title": [
                {"translate":"book.cnk.toast.background","font":"cnk.book:advancement"},
                {"translate":"book.cnk.toast.unlock.recipe","font":"cnk.book:advancement_text","color":"#7b613a"}
            ],
            "icon": {
            "id": "minecraft:poisonous_potato",
            "components": {"minecraft:item_model": f"spiced:{recipe.id}"}
            },
            "description": "",
            "announce_to_chat": False
        },
        "criteria": {
            "requirement": {
                "trigger": "minecraft:impossible"
            }
        }
    })

    # Generate grant function
    ctx.data[f"spiced:cookbook/grant/{recipe.id}"] = Function([
        f"function cnk:cookbook/database/set/main {{flag:'item.spiced.{recipe.id}'}}",
        f"execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only {item_advancement}",
        f"advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only {toast_advancement}"
    ])


def generate_page_register(ctx: Context, recipe: Recipe):
    """Generate a page register function for a recipe and add it to the correct function tag"""
    if recipe.tool == "mortar_and_pestle":
        recipe.tool_namespace = "spiced"
    else:
        recipe.tool_namespace = "cnk"
    register_function = [
        "execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy",
        f"data modify storage cnk:temp register.tool set value '{recipe.tool_namespace}.{recipe.tool}'",
        f"data modify storage cnk:temp register.page_name set value 'item.spiced.{recipe.id}'",
        "data modify storage cnk:temp register.recipe_icon_font set value 'spiced:icons'"
    ]

    ingredients = []
    for ingredient in recipe.ingredients:
        item_type = "item"
        if ingredient in blocks:
            item_type = "block"

        namespace = str(ingredient.split(":")[0])
        item = str(ingredient.split(":")[1])
        ingredients.append({"key":f"{item_type}.{namespace}.{item}", "font":"spiced:icons"})

    # Add ingredient keys and fonts
    register_function.append(f"data modify storage cnk:temp register.ingredients set value {ingredients}")

    if recipe.plateable:
        # Append plateable stamp
        register_function.append("data modify storage cnk:temp register.stamp set value {icon:'book.cnk.stamp.plateable.icon', text:'book.cnk.stamp.plateable.text'}")

    # Finish function
    register_function.extend([
        "data modify storage cnk:temp register.source set value {key:'spiced.source', font:'spiced:base'}",
        "function cnk:cookbook/pages/register"
    ])

    ctx.data[f"spiced:cookbook/pages/{recipe.id}/register"] = Function(register_function)

    # Append to function tag
    function_tag = ctx.data.function_tags[f"spiced:cookbook/{recipe.category}"].data
    function_tag["values"].append(f"spiced:cookbook/pages/{recipe.id}/register")
    ctx.data[f"spiced:cookbook/{recipe.category}"] = FunctionTag(function_tag)


def generate_fizz_trade(ctx: Context, recipe: Recipe):
    """Generate a fizz trade for a given recipe"""
    # assign count based on category
    if recipe.category == "hearty" or recipe.category == "feasts" or "music_disc" in recipe.id:
        count = 1
    elif recipe.category == "light":
        count = 2
    elif recipe.category == "desserts" or recipe.category == "snacks":
        count = 3
    elif recipe.category == "staple":
        # don't add trades for staples
        return

    loot_table = f"spiced:food/{recipe.id}"
    if recipe.loot_table:
        loot_table = recipe.loot_table

    trade_function = ctx.data.functions["spiced:fizz/trading/buy/recipes"].lines
    trade_function.append(f"execute if entity @s[advancements={{{f"spiced:cookbook/{recipe.id}/item"}=true}}] run data modify storage cnk:temp fizz.trading.items append value {{loot_table:'{loot_table}', count:{count}}}")
    ctx.data["spiced:fizz/trading/buy/recipes"] = Function(trade_function)


def order_section_tags(ctx: Context):
    """Order the section function tags alphebetically"""
    for category in COOKBOOK_CATEGORIES:
        function_tag = ctx.data.function_tags[f"spiced:cookbook/{category}"].data
        function_tag["values"].sort()
        ctx.data[f"spiced:cookbook/{category}"] = FunctionTag(function_tag)


def get_ingredient_check(ingredient: str) -> str:
    """Get an ingredient storage check from an ingredient"""
    namespace = str(ingredient.split(":")[0])
    item = str(ingredient.split(":")[1])

    if namespace == "minecraft":
        ingredient_check = f"{{id:'{ingredient}'}}"
    elif namespace == "cnk":
        ingredient_check = f"{{components:{{'minecraft:custom_data':{{cnk:{{ingredient:{{type:'{item}'}}}}}}}}}}"
    elif namespace == "spiced":
        ingredient_check = f"{{components:{{'minecraft:custom_data':{{spiced:{{ingredient:{{type:'{item}'}}}}}}}}}}"
    else:
        return LOGGER.error(f"Unknown namespace in ingredient {ingredient}.")
    
    return ingredient_check


def get_custom_data(ctx: Context, loot_table: dict) -> dict:
    """Get custom data from a loot table"""
    loot_table = ctx.data.loot_tables[loot_table].data

    functions = loot_table["pools"][0]["entries"][0]["functions"]
    
    for item in functions:
        if item["function"] == "minecraft:set_components":
            custom_data = copy.deepcopy(item["components"].get("minecraft:custom_data"))
            if custom_data is not None:
                custom_data.pop("smithed")
                return custom_data
            
    LOGGER.error(f"Unable to get custom data from loot table {loot_table}, grant code will not be generated")
    return None
        

def get_generic(ingredient: str) -> str:
    """Get a generic from an ingredient"""
    item = str(ingredient.split(":")[1])
    item = item.removeprefix("any_")
    item = item.removesuffix("_cutlets")
    item = item.removesuffix("_fillets")
    item = item.removesuffix("_bottle")

    return item
