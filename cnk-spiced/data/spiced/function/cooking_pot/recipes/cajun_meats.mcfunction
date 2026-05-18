# this function is called once a recipe has been completed! handles the removal of items from the cooking pot and the spawning of the final item

# removal of ingredients must be done using those 2 lines due to the possibility of having multiple slots filled with the same ingredient
# "set from storage" resolves the issue where the check would return multiple NBT values and cause an error

# remove the ingredient
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"sliced_seared_sausage"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

# remove the ingredient
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cajun_chicken"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"sliced_okra"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

function spiced:recipes/remove_generic/fish

# spawn the result
loot spawn ~ ~0.25 ~ loot spiced:food/cajun_meats

# MUST be called, handles animations/sounds and reset of data
function spiced:cooking_pot/effects/finish_cooking