data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'rice'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
function spiced:recipes/remove_generic/egg
function spiced:recipes/remove_generic/vegetable
loot spawn ~ ~0.25 ~ loot spiced:food/egg_fried_rice
function spiced:cooking_pot/effects/finish_cooking
