data remove storage spiced:temp cooking_pot.slot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:red_mushroom"}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove with storage spiced:temp cooking_pot

data remove storage spiced:temp cooking_pot.slot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:brown_mushroom"}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove with storage spiced:temp cooking_pot