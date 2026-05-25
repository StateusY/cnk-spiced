data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'lettuce'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:carrot'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
function spiced:recipes/remove_generic/meat
loot spawn ~ ~0.25 ~ loot spiced:food/lettuce_wrap
function spiced:cooking_pot/effects/finish_cooking
