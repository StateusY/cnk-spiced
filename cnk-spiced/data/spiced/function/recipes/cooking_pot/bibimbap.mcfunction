data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'rice'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
function spiced:recipes/remove_generic/meat
function spiced:recipes/remove_generic/egg
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:carrot'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
loot spawn ~ ~0.25 ~ loot spiced:food/bibimbap
function spiced:cooking_pot/effects/finish_cooking
