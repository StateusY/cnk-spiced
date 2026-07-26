execute if score $mixing_bowl_item_count spiced.dummy matches 2 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"flour"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"water_bottle"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/dough"

execute if score $mixing_bowl_item_count spiced.dummy matches 2 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"eggnog"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"cinnamon"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/cinna_shake"

execute if score $mixing_bowl_item_count spiced.dummy matches 3 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"egg"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"milk_bottle"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sugar"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/eggnog"

execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"salt"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"flour"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"butter"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"egg"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/pastry_dough"

execute if score $mixing_bowl_item_count spiced.dummy matches 4 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"chicken"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"porkchop"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"diced_bread"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"huntsman_pie_incomplete_1"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".spiced.mix_callback set value "spiced:mixing_bowl/recipes/huntsman_pie_incomplete_2"

execute if score $mixing_bowl_item_count spiced.dummy matches 1 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"milk_bottle"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components.'minecraft:custom_data'.spiced.mix_callback set value 'spiced:mixing_bowl/recipes/butter'

execute if score $mixing_bowl_item_count spiced.dummy matches 2 \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"glass_bottle"}}}}}] \
        if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sunflower"}}}}}] \
        if function spiced:mixing_bowl/mix/lock \
        run return run data modify entity @s item.components.'minecraft:custom_data'.spiced.mix_callback set value 'spiced:mixing_bowl/recipes/cooking_oil'