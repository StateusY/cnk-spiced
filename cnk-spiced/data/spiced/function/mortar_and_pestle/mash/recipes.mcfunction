# execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
#         if function spiced:mortar_and_pestle/mash/generic/milk if score $milk_count cnk.dummy matches 1 \
#         if function spiced:mortar_and_pestle/mash/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/butter"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if function spiced:mortar_and_pestle/mash/generic/ice if score $ice_count cnk.dummy matches 1 \
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

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if function spiced:mortar_and_pestle/mash/generic/pepper if score $pepper_count cnk.dummy matches 1 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/paprika"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"diced_onion"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/onion_powder"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"minced_garlic"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/garlic_powder"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"mustard_seeds"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/mustard_powder"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"cnk":{"ingredient":{"type":"cinnamon"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/ground_cinnamon"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 3 \
        if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:potato"}] \
        if function spiced:mortar_and_pestle/mash/generic/milk if score $milk_count cnk.dummy matches 1 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"cnk":{"ingredient":{"type":"butter"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/mashed_potatoes"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 4 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"italian_seasoning"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"black_pepper"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"salt"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"cajun_seasoning"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/jambalaya_seasoning"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 4 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"paprika"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"oregano"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"garlic_powder"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"thyme"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/italian_seasoning"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 4 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"ground_cinnamon"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"onion_powder"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"garlic_powder"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"mustard_powder"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/worchester_spice_mix"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 5 \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"oregano"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"marjoram"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"rosemary"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"thyme"}}}}}] \
        if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"basil"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/cajun_seasoning"

# execute if score $mixing_bowl_item_count cnk.dummy matches 4 \
#         if function cnk:mixing_bowl/mix/generic/ice if score $ice_count cnk.dummy matches 1 \
#         if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"coffee"}}}}}] \
#         if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
#         if function cnk:mixing_bowl/mix/generic/milk if score $milk_count cnk.dummy matches 1 \
#         if function cnk:mixing_bowl/mix/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".cnk.mix_callback set value "cnk:recipes/mixing_bowl/iced_coffee"
# removal of ingredients must be done using those 2 lines due to the possibility of having multiple slots filled with the same ingredient
# "set from storage" resolves the issue where the check would return multiple NBT values and cause an error