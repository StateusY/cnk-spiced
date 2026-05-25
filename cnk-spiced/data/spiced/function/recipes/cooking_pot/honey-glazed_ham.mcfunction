function spiced:recipes/remove_generic/pork
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:honey_bottle'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
loot spawn ~ ~0.25 ~ loot spiced:food/honey-glazed_ham
function spiced:cooking_pot/effects/finish_cooking
