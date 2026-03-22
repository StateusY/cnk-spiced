# unlike the cooking pot, the distiller does not split up its recipe files based on unique item quantities, there's just way less recipe so it's not necessary
# when added to the distiller tag, recipes in this file will be used for distilling:
# - cnk:tags/function/addons/distiller

# setup is very similar to the cooking pot, with the exception that the quantity of items must be checked first
# cnk comes with 2 lock functions, which basically just handle 2 different crafting times:
# - cnk:distiller/crafting/short_lock - 15 second crafting time
# - cnk:distiller/crafting/lock - 20 minute crafting time (1 minecraft day, for wines)
# you can define new lock functions if you need different crafting times, just take a look at those functions to see their layout

# both the cooking pot and distiller identify unique items by the presence of custom data
# if the custom data component is present, it will no longer be counted as its base vanilla item and its custom data will instead be used as a unique identifier
# you don't need to worry about this too much, beyond just making sure that your custom items have some amount of custom data that makes them unique!

# the cnk:temp distiller.Items storage contains the contents of the distiller, so you can check for any sort of data!

# you MUST define a new liquid_check function for any new liquids, these basically check the basin the distiller will output into, to make sure its empty or has the same liquid in it
# execute \
#         if score $unique_items cnk.dummy matches 3 \
#         if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
#         if data storage cnk:temp distiller.Items[{id:"minecraft:nether_wart"}] \
#         if data storage cnk:temp distiller.Items[{id:"minecraft:glistering_melon_slice"}] \
#         if function spiced:distiller/liquid_check/healing_potion \
#         if function cnk:distiller/crafting/short_lock \
#         run return run function spiced:distiller/recipes/healing_potion

execute \
        if score $unique_items cnk.dummy matches 1 \
        if function spiced:distiller/crafting/generic/wine if score $wine_count cnk.dummy matches 1 \
        if function spiced:distiller/liquid_check/vinegar \
        if function cnk:distiller/crafting/short_lock \
        run return run function spiced:distiller/recipes/vinegar

execute \
        if score $unique_items cnk.dummy matches 2 \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"heavy_cream"}}}}}] \
        if function spiced:distiller/crafting/generic/vinegar if score $vinegar_count cnk.dummy matches 1 \
        if function spiced:distiller/liquid_check/sour_cream \
        if function cnk:distiller/crafting/short_lock \
        run return run function spiced:distiller/recipes/sour_cream

execute \
        if score $unique_items cnk.dummy matches 3 \
        if function spiced:distiller/crafting/generic/vinegar if score $vinegar_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"paprika"}}}}}] \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"diced_bell_pepper"}}}}}] \
        if function spiced:distiller/liquid_check/pepper_sauce \
        if function cnk:distiller/crafting/short_lock \
        run return run function spiced:distiller/recipes/pepper_sauce

execute \
        if score $unique_items cnk.dummy matches 3 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"corn"}}}}}] \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] \
        if function spiced:distiller/liquid_check/ethanol \
        if function cnk:distiller/crafting/short_lock \
        run return run function spiced:distiller/recipes/ethanol

execute \
        if score $unique_items cnk.dummy matches 3 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{id:"minecraft:apple"}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:sugar"}] \
        if function spiced:distiller/liquid_check/apple_cider_vinegar \
        if function cnk:distiller/crafting/short_lock \
        run return run function spiced:distiller/recipes/apple_cider_vinegar

execute \
        if score $unique_items cnk.dummy matches 3 \
        if function cnk:distiller/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"soybeans"}}}}}] \
        if data storage cnk:temp distiller.Items[{id:"minecraft:wheat"}] \
        if function spiced:distiller/liquid_check/soy_sauce \
        if function cnk:distiller/crafting/short_lock \
        run return run function spiced:distiller/recipes/soy_sauce