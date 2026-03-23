scoreboard players set $chunk_of_lettuce_count cnk.dummy 0

execute store result score $chunk_of_lettuce_count cnk.dummy if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"chunk_of_lettuce"}}}}}]

return 1