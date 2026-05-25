data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:red_dye'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:green_dye'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:blue_dye'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:yellow_dye'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:cookie'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
loot spawn ~ ~0.25 ~ loot spiced:food/proud_cookie
function spiced:cooking_pot/effects/finish_cooking
