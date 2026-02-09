scoreboard players set $seed_count cnk.dummy 0

execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:wheat_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:pumpkin_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:melon_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:beetroot_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:torchflower_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp preparation_plate.Items[{components:{"minecraft:custom_data":{cnk:{seed:true}}}}] run scoreboard players add $seed_count cnk.dummy 1

return 1