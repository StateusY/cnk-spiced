data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:shulker_shell"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:bread"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

function spiced:recipes/remove_generic/chicken

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"lettuce"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"tomato"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

loot spawn ~ ~0.25 ~ loot spiced:food/jakes_uplifting_lunch

function spiced:cooking_pot/effects/finish_cooking