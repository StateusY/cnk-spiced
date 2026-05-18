# this handles any extra recipes for the mixing bowl!
# when added to the mixing bowl tag, recipes in this file will be used for mixing bowl crafting:
# - spiced:tags/function/addons/mixing_bowl

# very similar to the cooking pot and distiller
# check the item count, check the items, then lock (ensures the mixing bowl is not already mixing)
# callbacks are used here instead of direct function calls because of the crafting delay, just set mix_callback to whatever your recipe's function is
# execute if score $mixing_bowl_item_count spiced.dummy matches 2 \
#         if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:red_dye"}] \
#         if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:blue_dye"}] \
#         if function spiced:mixing_bowl/mix/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/purple_dye"

# execute if score $mixing_bowl_item_count spiced.dummy matches 2 \
#         if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:black_concrete_power"}] \
#         if function spiced:mixing_bowl/mix/generic/water if score $water_count spiced.dummy matches 1 \
#         if function spiced:mixing_bowl/mix/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/black_concrete"

execute if score $mixing_bowl_item_count spiced.dummy matches 2 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"jambalaya_seasoning"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:chicken"}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/cajun_chicken"

execute if score $mixing_bowl_item_count spiced.dummy matches 3 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"corn"}}}}}] \
        if function spiced:mixing_bowl/mix/generic/milk if score $milk_count spiced.dummy matches 1 \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:sugar"}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/corn_milk"
#check if above milk count works with multiples

execute if score $mixing_bowl_item_count spiced.dummy matches 3 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cajun_meats"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cajun_veggies"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cajun_rice"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/jambalaya"

execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
        if function spiced:mixing_bowl/generic/duplicate/milk if score $milk_count spiced.dummy matches 3 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"butter"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/heavy_cream"

