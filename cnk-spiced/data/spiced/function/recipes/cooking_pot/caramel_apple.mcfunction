data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:apple'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'caramel'}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:'minecraft:stick'}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
loot spawn ~ ~0.25 ~ loot spiced:food/caramel_apple
function spiced:cooking_pot/effects/finish_cooking
