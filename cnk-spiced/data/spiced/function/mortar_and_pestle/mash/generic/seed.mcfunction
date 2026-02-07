scoreboard players set $seed_count cnk.dummy 0

execute if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:wheat_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:pumpkin_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:melon_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:beetroot_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:torchflower_seeds"}] run scoreboard players add $seed_count cnk.dummy 1
execute if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{cnk:{seed:true}}}}] run scoreboard players add $seed_count cnk.dummy 1

return 1