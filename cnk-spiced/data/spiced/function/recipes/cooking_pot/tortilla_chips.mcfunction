data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'tortilla'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
function spiced:recipes/remove_generic/cooking_oil
loot spawn ~ ~0.25 ~ loot spiced:food/tortilla_chips
function spiced:cooking_pot/effects/finish_cooking
