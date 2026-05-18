scoreboard players set $pepper_count spiced.dummy 0

execute if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"chili_pepper"}}}}}] run scoreboard players add $pepper_count spiced.dummy 1
execute if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"bell_pepper"}}}}}] run scoreboard players add $pepper_count spiced.dummy 1

return 1