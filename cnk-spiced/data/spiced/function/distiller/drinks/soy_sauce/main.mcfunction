# this is the callback functions thats called when a player removes the liquid from the basin using a glass bottle!
# removal of the glass bottle from the player is handled by spiced, all you need to do is give the player the right item
execute if entity @s[predicate=spiced:inventory_full] run return run loot spawn ~ ~ ~ loot spiced:food/soy_sauce
loot give @s loot spiced:food/soy_sauce

# its possible, if you're using loot tables, that you need to add handling for when the player's inventory is full. spiced provides a predicate to check for that, see the example code below:
# execute if entity @s[predicate=spiced:inventory_full] run return run loot spawn ~ ~ ~ loot spiced:food/beer
# loot give @s loot spiced:food/beer