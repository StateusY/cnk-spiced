data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"dough"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:tnt"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:apple"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

loot spawn ~ ~0.25 ~ loot spiced:food/psys_explosive_apple_pie

function spiced:cooking_pot/effects/finish_cooking