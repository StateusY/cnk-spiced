execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if function spiced:mortar_and_pestle/mash/generic/milk if score $milk_count cnk.dummy matches 1 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/butter"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 1 \
        if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:potato"}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/mashed_potatoes"
        
execute if score $mortar_and_pestle_item_count cnk.dummy matches 2 \
        if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:glass_bottle"}] \
        if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:sunflower"}] \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/cooking_oil"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 2 \
        if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:wheat"}] \
        if function spiced:mortar_and_pestle/mash/generic/water if score $water_count cnk.dummy matches 1 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/dough"

execute if score $mortar_and_pestle_item_count cnk.dummy matches 2 \
        if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:wheat"}] \
        if function spiced:mortar_and_pestle/mash/generic/egg if score $egg_count cnk.dummy matches 1 \
        if function spiced:mortar_and_pestle/mash/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mash_callback set value "spiced:recipes/mortar_and_pestle/egg_dough"