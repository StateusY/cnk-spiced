function spiced:recipes/remove_generic/fish
function spiced:recipes/remove_generic/cooking_oil
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:wheat'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
loot spawn ~ ~0.25 ~ loot spiced:food/fried_fish
function spiced:cooking_pot/effects/finish_cooking
