function spiced:recipes/remove_generic/egg

function spiced:recipes/remove_generic/water

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"chili_pepper"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:wheat"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:glowstone"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

loot spawn ~ ~0.25 ~ loot spiced:food/promised_cupcake

function spiced:cooking_pot/effects/finish_cooking