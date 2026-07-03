execute \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"stock"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"diced_celery"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"diced_onion"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cooking_oil"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"ground_cinnamon"}}}}}] \
        if function spiced:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/huntsman_pie_incomplete_1

execute \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"huntsman_pie_incomplete_2"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"black_pepper"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"pastry_dough"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"chicken"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"porkchop"}}}}}] \
        if function spiced:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/huntsman_pie
