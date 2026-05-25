data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'noodles'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'cheese'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
loot spawn ~ ~0.25 ~ loot spiced:food/mac_and_cheese
function spiced:cooking_pot/effects/finish_cooking
