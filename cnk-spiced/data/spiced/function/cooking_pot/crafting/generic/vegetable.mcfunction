scoreboard players set $vegetable_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"tomato"}}}}}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"corn"}}}}}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"lettuce"}}}}}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"chili_pepper"}}}}}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:beetroot"}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:carrot"}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:potato"}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:dried_kelp"}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:red_mushroom"}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:brown_mushroom"}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:pumpkin"}] run scoreboard players add $vegetable_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:sea_pickle"}] run scoreboard players add $vegetable_count spiced.dummy 1

return 1