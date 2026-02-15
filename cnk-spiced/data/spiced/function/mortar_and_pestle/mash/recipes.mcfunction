# execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
#         if function spiced:mortar_and_pestle/mash/generic/milk if score $milk_count cnk.dummy matches 1 \
#         if function spiced:mortar_and_pestle/mash/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/butter"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if function cnk:mixing_bowl/mix/generic/ice if score $ice_count cnk.dummy matches 1 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/ice_cubes"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"ice_cubes"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/crushed_ice"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:tuff"}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/salt"

# execute if score $mortar_and_pestle_item_count cnk.dummy matches 2 \
#         if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:glass_bottle"}] \
#         if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:sunflower"}] \
#         if function spiced:mortar_and_pestle/mash/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/cooking_oil"

# execute if score $mortar_and_pestle_item_count cnk.dummy matches 2 \
#         if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:wheat"}] \
#         if function spiced:mortar_and_pestle/mash/generic/water if score $water_count cnk.dummy matches 1 \
#         if function spiced:mortar_and_pestle/mash/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/dough"

# execute if score $mortar_and_pestle_item_count cnk.dummy matches 2 \
#         if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:wheat"}] \
#         if function spiced:mortar_and_pestle/mash/generic/egg if score $egg_count cnk.dummy matches 1 \
#         if function spiced:mortar_and_pestle/mash/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/egg_dough"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 3 \
        if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:potato"}] \
        if function spiced:mortar_and_pestle/mash/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"cnk":{"ingredient":{"type":"butter"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/mashed_potatoes"

# execute if score $mixing_bowl_item_count cnk.dummy matches 4 \
#         if function cnk:mixing_bowl/mix/generic/ice if score $ice_count cnk.dummy matches 1 \
#         if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"coffee"}}}}}] \
#         if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
#         if function cnk:mixing_bowl/mix/generic/milk if score $milk_count cnk.dummy matches 1 \
#         if function cnk:mixing_bowl/mix/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/iced_coffee"
