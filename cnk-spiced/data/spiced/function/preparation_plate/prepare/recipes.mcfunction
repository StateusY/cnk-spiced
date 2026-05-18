# execute if score $preparation_plate_item_count spiced.dummy matches 1 \
#         if function spiced:preparation_plate/prepare/generic/milk if score $milk_count spiced.dummy matches 1 \
#         if function spiced:preparation_plate/prepare/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.prepare_callback set value "spiced:recipes/preparation_plate/butter"

# execute if score $preparation_plate_item_count spiced.dummy matches 2 \
#         if data storage spiced:temp preparation_plate.Items[{id:"minecraft:glass_bottle"}] \
#         if data storage spiced:temp preparation_plate.Items[{id:"minecraft:sunflower"}] \
#         if function spiced:preparation_plate/prepare/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.prepare_callback set value "spiced:recipes/preparation_plate/cooking_oil"

# execute if score $preparation_plate_item_count spiced.dummy matches 2 \
#         if data storage spiced:temp preparation_plate.Items[{id:"minecraft:wheat"}] \
#         if function spiced:preparation_plate/prepare/generic/water if score $water_count spiced.dummy matches 1 \
#         if function spiced:preparation_plate/prepare/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.prepare_callback set value "spiced:recipes/preparation_plate/dough"

# execute if score $preparation_plate_item_count spiced.dummy matches 2 \
#         if data storage spiced:temp preparation_plate.Items[{id:"minecraft:wheat"}] \
#         if function spiced:preparation_plate/prepare/generic/egg if score $egg_count spiced.dummy matches 1 \
#         if function spiced:preparation_plate/prepare/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.prepare_callback set value "spiced:recipes/preparation_plate/egg_dough"

# execute if score $preparation_plate_item_count spiced.dummy matches 3 \
#         if data storage spiced:temp preparation_plate.Items[{id:"minecraft:potato"}] \
#         if function spiced:preparation_plate/prepare/generic/milk if score $milk_count spiced.dummy matches 1 \
#         if data storage spiced:temp preparation_plate.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"butter"}}}}}] \
#         if function spiced:preparation_plate/prepare/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.prepare_callback set value "spiced:recipes/preparation_plate/mashed_potatoes"

# execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
#         if function spiced:mixing_bowl/mix/generic/ice if score $ice_count spiced.dummy matches 1 \
#         if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"coffee"}}}}}] \
#         if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:cocoa_beans"}] \
#         if function spiced:mixing_bowl/mix/generic/milk if score $milk_count spiced.dummy matches 1 \
#         if function spiced:mixing_bowl/mix/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:recipes/mixing_bowl/iced_coffee"

execute if score $preparation_plate_item_count spiced.dummy matches 4 \
        if data storage spiced:temp preparation_plate.Items[{id:"minecraft:bowl"}] \
        if data storage spiced:temp preparation_plate.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"mashed_potatoes"}}}}}] \
        if data storage spiced:temp preparation_plate.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"salt"}}}}}] \
        if data storage spiced:temp preparation_plate.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"parsley"}}}}}] \
        if function spiced:preparation_plate/prepare/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.prepare_callback set value "spiced:recipes/preparation_plate/mashed_potatoes_side"

execute if score $preparation_plate_item_count spiced.dummy matches 4 \
        if data storage spiced:temp preparation_plate.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cooking_oil"}}}}}] \
        if data storage spiced:temp preparation_plate.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"ethanol"}}}}}] \
        if data storage spiced:temp preparation_plate.Items[{id:"minecraft:paper"}] \
        if data storage spiced:temp preparation_plate.Items[{id:"minecraft:blaze_powder"}] \
        if function spiced:preparation_plate/prepare/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.prepare_callback set value "spiced:recipes/preparation_plate/flaming_cocktail"