# tellraw @a[tag=summit.in_booth.spiced] [{"translate":"spiced.tooltip","font":"spiced:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":spiced.loaded,"font":"minecraft:default"}]

# blocks
scoreboard objectives add spiced.timer dummy
scoreboard objectives add spiced.cook_cooldown dummy
scoreboard objectives add spiced.cook_time dummy
scoreboard objectives add spiced.idle_time dummy

scoreboard objectives add spiced.item_count dummy
scoreboard objectives add spiced.rotation dummy
scoreboard objectives add spiced.mix_time dummy
scoreboard objectives add spiced.mash_time dummy

# water
scoreboard objectives add spiced.get_water minecraft.used:minecraft.glass_bottle

# book
scoreboard objectives remove spiced.use_book
scoreboard objectives add spiced.use_book minecraft.used:minecraft.written_book
scoreboard objectives add spiced.cookbook_buttons trigger
scoreboard objectives add spiced.cookbook_current_page dummy
scoreboard objectives add spiced.cookbook_previous_page dummy
scoreboard objectives add spiced.cookbook_references trigger


# general use constants
scoreboard objectives add spiced.dummy dummy
scoreboard objectives add mcb.internal dummy

data modify storage spiced:cookbook pages set value { \
    1: "spiced:cookbook/pages/front", \
    2: "spiced:cookbook/pages/info", \
    3: "spiced:cookbook/pages/butter", \
    4: "spiced:cookbook/pages/cooking_oil", \
    5: "spiced:cookbook/pages/ground_cinnamon", \
    6: "spiced:cookbook/pages/flour", \
    7: "spiced:cookbook/pages/dough", \
    8: "spiced:cookbook/pages/bread", \
    9: "spiced:cookbook/pages/sliced_bread", \
    10: "spiced:cookbook/pages/diced_bread", \
    11: "spiced:cookbook/pages/sliced_celery", \
    12: "spiced:cookbook/pages/diced_celery", \
    13: "spiced:cookbook/pages/sliced_onion", \
    14: "spiced:cookbook/pages/diced_onion", \
    15: "spiced:cookbook/pages/stock", \
    16: "spiced:cookbook/pages/pastry_dough", \
    17: "spiced:cookbook/pages/incomplete_huntsman_pie_1", \
    18: "spiced:cookbook/pages/incomplete_huntsman_pie_2", \
    19: "spiced:cookbook/pages/huntsman_pie", \
    20: "spiced:cookbook/pages/back" \
}

function spiced:teardown
function spiced:setup