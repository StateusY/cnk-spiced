scoreboard players set $pepper_count cnk.dummy 0

execute if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili_pepper"}}}}}] run scoreboard players add $pepper_count cnk.dummy 1
execute if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"bell_pepper"}}}}}] run scoreboard players add $pepper_count cnk.dummy 1

return 1