scoreboard players set $mushroom_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:red_mushroom"}] run scoreboard players add $mushroom_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:brown_mushroom"}] run scoreboard players add $mushroom_count spiced.dummy 1
return 1