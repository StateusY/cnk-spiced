# this function is called once a recipe has been completed! handles the removal of items from the cooking pot and the spawning of the final item

# removal of ingredients must be done using those 2 lines due to the possibility of having multiple slots filled with the same ingredient
# "set from storage" resolves the issue where the check would return multiple NBT values and cause an error

# remove the ingredient
function spiced:recipes/remove_generic/grease

# remove the ingredient
function cnk:recipes/remove_generic/pork


# spawn the result
loot spawn ~ ~0.25 ~ loot spiced:food/seared_sausage

# MUST be called, handles animations/sounds and reset of data
function cnk:cooking_pot/effects/finish_cooking