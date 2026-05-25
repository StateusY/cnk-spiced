scoreboard players set $seed_count spiced.dummy 0

execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:wheat_seeds"}] run scoreboard players add $seed_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:pumpkin_seeds"}] run scoreboard players add $seed_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:melon_seeds"}] run scoreboard players add $seed_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:beetroot_seeds"}] run scoreboard players add $seed_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:torchflower_seeds"}] run scoreboard players add $seed_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{seed:true}}}}] run scoreboard players add $seed_count spiced.dummy 1

return 1