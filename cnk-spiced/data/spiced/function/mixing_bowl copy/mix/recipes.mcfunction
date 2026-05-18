execute if score $mixing_bowl_item_count spiced.dummy matches 2 \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:wheat"}] \
        if function spiced:mixing_bowl/mix/generic/water if score $water_count spiced.dummy matches 1 \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/dough"

execute if score $mixing_bowl_item_count spiced.dummy matches 2 \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:wheat"}] \
        if function spiced:mixing_bowl/mix/generic/egg if score $egg_count spiced.dummy matches 1 \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/egg_dough"

execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"ice_cream"}}}}}] \
        if function spiced:mixing_bowl/mix/generic/ice if score $ice_count spiced.dummy matches 1 \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:sweet_berries"}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/averys_freezer_burnt_sundae"

execute if score $mixing_bowl_item_count spiced.dummy matches 3 \
        if function spiced:mixing_bowl/mix/generic/vegetable if score $vegetable_count spiced.dummy matches 3 \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/vegetable_puree"

execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
        if function spiced:mixing_bowl/mix/generic/fruit if score $fruit_count spiced.dummy matches 1 \
        if function spiced:mixing_bowl/mix/generic/milk if score $milk_count spiced.dummy matches 1 \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:sugar"}] \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:pink_dye"}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/floofys_pink_parfait"

execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
        if function spiced:mixing_bowl/mix/generic/flesh if score $flesh_count spiced.dummy matches 3 \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:hay_block"}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/hay_brain"

execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
        if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:sweet_berries"}] \
        if function spiced:mixing_bowl/mix/generic/ice_cream if score $ice_cream_count spiced.dummy matches 2 \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/sundae"

execute if score $mixing_bowl_item_count spiced.dummy matches 3 \
        if function spiced:mixing_bowl/mix/generic/cookie if score $cookie_count spiced.dummy matches 2 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"ice_cream"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/frozen_delight"

execute if score $mixing_bowl_item_count spiced.dummy matches 1 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"hamburger"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/nothing_hamburger"

execute if score $mixing_bowl_item_count spiced.dummy matches 1 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cheeseburger"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/nothing_cheeseburger"

# code below is generated by beet