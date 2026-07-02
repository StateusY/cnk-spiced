scoreboard players enable @s spiced.cookbook_buttons
tag @s[tag=spiced.on_incomplete_page] remove spiced.on_incomplete_page
function dcf:open
data remove storage spiced:temp cookbook
data merge storage spiced:temp {cookbook: {data: {source_key: "spiced.no_source", source_font: "spiced:icons", tool_font: "spiced:icons", front_state: "idle", page_name: "item.spiced.unknown", recipe_icon_font: "spiced:icons", slot_1: "item.spiced.unknown", font_1: "spiced:icons", slot_2: "item.spiced.unknown", font_2: "spiced:icons", slot_3: "item.spiced.unknown", font_3: "spiced:icons", slot_4: "item.spiced.unknown", font_4: "spiced:icons", slot_5: "item.spiced.unknown", font_5: "spiced:icons", slot_6: "item.spiced.unknown", font_6: "spiced:icons", slot_7: "item.spiced.unknown", font_7: "spiced:icons", stamp: "book.spiced.stamp.none", return: "book.spiced.return.inactive.icon", lectern_button: ",", button_width: 211, previous_incomplete_recipe: "book.spiced.empty_incomplete_recipe", next_incomplete_recipe: "book.spiced.empty_incomplete_recipe"}}}
execute unless function spiced:cookbook/database/get/main run return fail
execute at @s run playsound item.book.page_turn neutral @s ~ ~ ~ 1 1
function spiced:cookbook/set_section_states
execute unless score @s spiced.cookbook_current_page matches 1.. run scoreboard players set @s spiced.cookbook_current_page 1
execute if score @s spiced.cookbook_current_page matches ..0 run scoreboard players set @s spiced.cookbook_current_page 1
execute if score @s spiced.cookbook_current_page >= $global_cookbook_page spiced.dummy run scoreboard players operation @s spiced.cookbook_current_page = $global_cookbook_page spiced.dummy
execute if score @s spiced.cookbook_current_page = $global_cookbook_page spiced.dummy run scoreboard players remove @s spiced.cookbook_current_page 1
execute if score @s spiced.cookbook_current_page matches 1..9 run data modify storage spiced:temp cookbook.data.page_number_width set value "single"
execute if score @s spiced.cookbook_current_page matches 10..99 run data modify storage spiced:temp cookbook.data.page_number_width set value "double"
execute if score @s spiced.cookbook_current_page matches 100.. run data modify storage spiced:temp cookbook.data.page_number_width set value "triple"
execute store result storage spiced:temp cookbook.data.current_page int 1 run scoreboard players get @s spiced.cookbook_current_page
function spiced:cookbook/get_page with storage spiced:temp cookbook.data
scoreboard players set $ingredient_count spiced.dummy 0
execute store result score $ingredient_count spiced.dummy run data get storage spiced:temp cookbook.current_page.ingredients
execute unless score $ingredient_count spiced.dummy matches 0 run function spiced:cookbook/resolve_ingredients
data modify storage spiced:temp cookbook.data.tool set from storage spiced:temp cookbook.current_page.tool
data modify storage spiced:temp cookbook.data.icon_font set from storage spiced:temp cookbook.current_page.icon_font
execute store result storage spiced:temp cookbook.data.ingredient_count int 1 run scoreboard players get $ingredient_count spiced.dummy
data modify storage spiced:temp cookbook.data.source_key set from storage spiced:temp cookbook.current_page.source.key
data modify storage spiced:temp cookbook.data.source_font set from storage spiced:temp cookbook.current_page.source.font
data modify storage spiced:temp cookbook.data.tool_font set from storage spiced:temp cookbook.current_page.tool_font
function spiced:cookbook/stamp/main
function spiced:cookbook/return/main
execute if entity @s[tag=spiced.via_lectern] run function spiced:cookbook/lectern_button
function spiced:cookbook/incomplete_recipe/main
function spiced:cookbook/incomplete_recipe/buttons
execute if data storage spiced:temp cookbook.current_page.dialog_function run return run function spiced:cookbook/open_page with storage spiced:temp cookbook.current_page
function spiced:cookbook/builder/build_page
