scoreboard players set $lettuce_count cnk.dummy 0

execute store result score $lettuce_count cnk.dummy if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}]

return 1