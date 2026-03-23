scoreboard players set $mass_of_lettuce_count cnk.dummy 0

execute store result score $mass_of_lettuce_count cnk.dummy if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"mass_of_lettuce"}}}}}]

return 1