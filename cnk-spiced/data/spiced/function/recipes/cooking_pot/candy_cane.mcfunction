data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:red_dye"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:white_dye"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

loot spawn ~ ~0.25 ~ loot spiced:food/candy/cane

function spiced:cooking_pot/effects/finish_cooking