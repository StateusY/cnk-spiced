# the cooking pot has its recipe functions split up based on the number of unique items in the pot, mainly for performance reasons
# all recipes with 3 unique ingredients must go into this file, recipes with other quanities must be placed in the other tags:
# - #spiced:tags/function/recipes/cooking_pot/1.json
# - #spiced:tags/function/recipes/cooking_pot/2.json
# - #spiced:tags/function/recipes/cooking_pot/3.json
# - #spiced:tags/function/recipes/cooking_pot/4.json
# - #spiced:tags/function/recipes/cooking_pot/5.json

# both the cooking pot and distiller identify unique items by the presence of custom data
# if the custom data component is present, it will no longer be counted as its base vanilla item and its custom data will instead be used as a unique identifier
# you don't need to worry about this too much, beyond just making sure that your custom items have some amount of custom data that makes them unique!

# check for each ingredient individually
# helper functions exist for items that have variants, spiced comes with a few of these by default, which you can make use of! they basically just return the quantity of those unique items in the cooking pot
# the spiced:temp cooking_pot.Items storage contains the contents of the cooking pot, so you can check for any sort of data!

# spiced:cooking_pot/crafting/lock MUST be called and MUST be called last, this handles the cooking process and decides when cooking is complete
execute \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"basil"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"salt"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cooking_oil"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"minced_garlic"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"tomato_paste"}}}}}] \
        if function spiced:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/tomato_sauce

execute \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"diced_onion"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"diced_bell_pepper"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"rice"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"minced_garlic"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"sliced_okra"}}}}}] \
        if function spiced:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/okra_skillet_incomplete

execute \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"diced_tomato"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"stock"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"okra_skillet_incomplete"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"pepper_sauce"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"thyme"}}}}}] \
        if function spiced:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/okra_skillet

execute \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"diced_celery"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"diced_bell_pepper"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"diced_onion"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"minced_garlic"}}}}}] \
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cajun_seasoning"}}}}}] \
        if function spiced:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/cajun_veggies