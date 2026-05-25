data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'dough'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
function spiced:recipes/remove_generic/pork
loot spawn ~ ~0.25 ~ loot spiced:food/sausage_roll
function spiced:cooking_pot/effects/finish_cooking
