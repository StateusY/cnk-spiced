scoreboard players set $egg_count cnk.dummy 0

execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:egg"}] run scoreboard players add $egg_count cnk.dummy 1
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:blue_egg"}] run scoreboard players add $egg_count cnk.dummy 1
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:brown_egg"}] run scoreboard players add $egg_count cnk.dummy 1
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:turtle_egg"}] run scoreboard players add $egg_count cnk.dummy 1
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:sniffer_egg"}] run scoreboard players add $egg_count cnk.dummy 1

return 1