scoreboard players set $grease_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}] run scoreboard players add $grease_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] run scoreboard players add $grease_count cnk.dummy 1

return 1