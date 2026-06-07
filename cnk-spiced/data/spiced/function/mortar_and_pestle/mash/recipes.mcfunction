execute if score $mortar_and_pestle_item_count spiced.dummy matches 1 \
        if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"wheat"}}}}}] \
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