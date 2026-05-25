function spiced:recipes/remove_generic/cooking_oil
function spiced:recipes/remove_generic/chicken
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:wheat'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
loot spawn ~ ~0.25 ~ loot spiced:food/fried_chicken
function spiced:cooking_pot/effects/finish_cooking
