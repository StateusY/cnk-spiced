execute if score $mortar_and_pestle_item_count spiced.dummy matches 1 \
        if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"wheat"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:mortar_and_pestle/recipes/flour"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 1 \
        if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"cinnamon"}}}}}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:mortar_and_pestle/recipes/ground_cinnamon"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/duplicate/lettuce if score $lettuce_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:mortar_and_pestle/recipes/ball_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/duplicate/ball_of_lettuce if score $ball_of_lettuce_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:mortar_and_pestle/recipes/chunk_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/duplicate/chunk_of_lettuce if score $chunk_of_lettuce_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:mortar_and_pestle/recipes/mass_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/duplicate/mass_of_lettuce if score $mass_of_lettuce_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:mortar_and_pestle/recipes/pan_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/duplicate/pan_of_lettuce if score $pan_of_lettuce_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:mortar_and_pestle/recipes/portion_of_lettuce"

execute if score $mortar_and_pestle_item_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/duplicate/portion_of_lettuce if score $portion_of_lettuce_count spiced.dummy matches 3 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:mortar_and_pestle/recipes/reasonable_amount_of_lettuce"