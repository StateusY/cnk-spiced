# execute if score $meat_grinder_item_count cnk.dummy matches 1 \
#         if function spiced:meat_grinder/grind/generic/milk if score $milk_count cnk.dummy matches 1 \
#         if function spiced:meat_grinder/grind/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/butter"

execute if score $meat_grinder_item_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/generic/ice if score $ice_count cnk.dummy matches 1 \
        if function spiced:meat_grinder/grind/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/ice_cubes"

execute if score $meat_grinder_item_count cnk.dummy matches 1 \
        if data storage cnk:temp meat_grinder.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"ice_cubes"}}}}}] \
        if function spiced:meat_grinder/grind/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/crushed_ice"

execute if score $meat_grinder_item_count cnk.dummy matches 1 \
        if data storage cnk:temp meat_grinder.Items[{id:"minecraft:raw_beef"}] \
        if function spiced:meat_grinder/grind/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/beef_cutlets"

# execute if score $meat_grinder_item_count cnk.dummy matches 2 \
#         if data storage cnk:temp meat_grinder.Items[{id:"minecraft:glass_bottle"}] \
#         if data storage cnk:temp meat_grinder.Items[{id:"minecraft:sunflower"}] \
#         if function spiced:meat_grinder/grind/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/cooking_oil"

# execute if score $meat_grinder_item_count cnk.dummy matches 2 \
#         if data storage cnk:temp meat_grinder.Items[{id:"minecraft:wheat"}] \
#         if function spiced:meat_grinder/grind/generic/water if score $water_count cnk.dummy matches 1 \
#         if function spiced:meat_grinder/grind/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/dough"

# execute if score $meat_grinder_item_count cnk.dummy matches 2 \
#         if data storage cnk:temp meat_grinder.Items[{id:"minecraft:wheat"}] \
#         if function spiced:meat_grinder/grind/generic/egg if score $egg_count cnk.dummy matches 1 \
#         if function spiced:meat_grinder/grind/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/egg_dough"

execute if score $meat_grinder_item_count cnk.dummy matches 3 \
        if data storage cnk:temp meat_grinder.Items[{id:"minecraft:potato"}] \
        if function spiced:meat_grinder/grind/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp meat_grinder.Items[{components:{"minecraft:custom_data":{"cnk":{"ingredient":{"type":"butter"}}}}}] \
        if function spiced:meat_grinder/grind/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.grind_callback set value "spiced:recipes/meat_grinder/grinded_potatoes"

# execute if score $mixing_bowl_item_count cnk.dummy matches 4 \
#         if function cnk:mixing_bowl/mix/generic/ice if score $ice_count cnk.dummy matches 1 \
#         if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"coffee"}}}}}] \
#         if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
#         if function cnk:mixing_bowl/mix/generic/milk if score $milk_count cnk.dummy matches 1 \
#         if function cnk:mixing_bowl/mix/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/iced_coffee"
