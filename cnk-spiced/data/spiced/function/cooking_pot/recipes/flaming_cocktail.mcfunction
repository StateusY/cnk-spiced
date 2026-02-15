# this function is called once a recipe has been completed! handles the removal of items from the cooking pot and the spawning of the final item

# removal of ingredients must be done using those 2 lines due to the possibility of having multiple slots filled with the same ingredient
# "set from storage" resolves the issue where the check would return multiple NBT values and cause an error

# remove the ingredient
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:wool"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

# remove the ingredient
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:blaze_powder"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"ethanol"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot



# spawn the result
loot spawn ~ ~0.25 ~ loot spiced:food/flaming_cocktail

# MUST be called, handles animations/sounds and reset of data
function cnk:cooking_pot/effects/finish_cooking