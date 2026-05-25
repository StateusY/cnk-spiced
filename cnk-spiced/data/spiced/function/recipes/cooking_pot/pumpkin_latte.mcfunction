data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'coffee'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:pumpkin'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'cinnamon'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:sugar'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
function spiced:recipes/remove_generic/milk
loot spawn ~ ~0.25 ~ loot spiced:food/pumpkin_latte
function spiced:cooking_pot/effects/finish_cooking
