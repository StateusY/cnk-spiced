# execute if score $mortar_and_pestle_item_count spiced.dummy matches 1 \
#         if function spiced:mortar_and_pestle/mash/generic/milk if score $milk_count spiced.dummy matches 1 \
#         if function spiced:mortar_and_pestle/mash/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/butter"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 1 \
        if data storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:wheat"}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/flour"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 1 \
        if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"diced_onion"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/onion_powder"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 1 \
        if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"cinnamon"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/ground_cinnamon"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 4 \
        if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"salt"}}}}}] \
        if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"flour"}}}}}] \
        if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"butter"}}}}}] \
        if data storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:egg"}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/pastry_dough"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/generic/duplicate/lettuce if score $lettuce_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/ball_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/generic/duplicate/ball_of_lettuce if score $lettuce_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/chunk_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/generic/duplicate/chunk_of_lettuce if score $lettuce_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/mass_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/generic/duplicate/mass_of_lettuce if score $lettuce_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/pan_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/generic/duplicate/pan_of_lettuce if score $lettuce_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/portion_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/generic/duplicate/portion_of_lettuce if score $lettuce_count spiced.dummy matches 5 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/reasonable_amount_of_lettuce"

# execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
#         if function spiced:mixing_bowl/mix/generic/ice if score $ice_count spiced.dummy matches 1 \
#         if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"coffee"}}}}}] \
#         if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
#         if function spiced:mixing_bowl/mix/generic/milk if score $milk_count spiced.dummy matches 1 \
#         if function spiced:mixing_bowl/mix/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/iced_coffee"
# removal of ingredients must be done using those 2 lines due to the possibility of having multiple slots filled with the same ingredient
# "set from storage" resolves the issue where the check would return multiple NBT values and cause an error