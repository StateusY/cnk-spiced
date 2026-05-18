# execute if score $meat_grinder_item_count spiced.dummy matches 1 \
#         if function spiced:meat_grinder/grind/generic/milk if score $milk_count spiced.dummy matches 1 \
#         if function spiced:meat_grinder/grind/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/butter"

execute if score $meat_grinder_item_count spiced.dummy matches 1 \
        if function spiced:mixing_bowl/mix/generic/ice if score $ice_count spiced.dummy matches 1 \
        if function spiced:meat_grinder/grind/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/ice_cubes"

execute if score $meat_grinder_item_count spiced.dummy matches 1 \
        if data storage spiced:temp meat_grinder.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"ice_cubes"}}}}}] \
        if function spiced:meat_grinder/grind/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/crushed_ice"

execute if score $meat_grinder_item_count spiced.dummy matches 1 \
        if data storage spiced:temp meat_grinder.Items[{id:"minecraft:beef"}] \
        if function spiced:meat_grinder/grind/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/ground_beef"

# execute if score $meat_grinder_item_count spiced.dummy matches 2 \
#         if data storage spiced:temp meat_grinder.Items[{id:"minecraft:glass_bottle"}] \
#         if data storage spiced:temp meat_grinder.Items[{id:"minecraft:sunflower"}] \
#         if function spiced:meat_grinder/grind/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/cooking_oil"

# execute if score $meat_grinder_item_count spiced.dummy matches 2 \
#         if data storage spiced:temp meat_grinder.Items[{id:"minecraft:wheat"}] \
#         if function spiced:meat_grinder/grind/generic/water if score $water_count spiced.dummy matches 1 \
#         if function spiced:meat_grinder/grind/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/dough"

# execute if score $meat_grinder_item_count spiced.dummy matches 2 \
#         if data storage spiced:temp meat_grinder.Items[{id:"minecraft:wheat"}] \
#         if function spiced:meat_grinder/grind/generic/egg if score $egg_count spiced.dummy matches 1 \
#         if function spiced:meat_grinder/grind/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/egg_dough"

# execute if score $meat_grinder_item_count spiced.dummy matches 3 \
#         if data storage spiced:temp meat_grinder.Items[{id:"minecraft:potato"}] \
#         if function spiced:meat_grinder/grind/generic/milk if score $milk_count spiced.dummy matches 1 \
#         if data storage spiced:temp meat_grinder.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"butter"}}}}}] \
#         if function spiced:meat_grinder/grind/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/mashed_potatoes"

# # execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
#         if function spiced:mixing_bowl/mix/generic/ice if score $ice_count spiced.dummy matches 1 \
#         if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"coffee"}}}}}] \
#         if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
#         if function spiced:mixing_bowl/mix/generic/milk if score $milk_count spiced.dummy matches 1 \
#         if function spiced:mixing_bowl/mix/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/iced_coffee"
