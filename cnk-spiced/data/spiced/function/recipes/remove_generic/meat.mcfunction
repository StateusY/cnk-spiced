data remove storage spiced:temp cooking_pot.slot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:porkchop"}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove with storage spiced:temp cooking_pot

data remove storage spiced:temp cooking_pot.slot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:chicken"}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove with storage spiced:temp cooking_pot