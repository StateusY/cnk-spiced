scoreboard players set $ice_count spiced.dummy 0

execute if data storage spiced:temp preparation_plate.Items[{id:"minecraft:ice"}] run scoreboard players add $ice_count spiced.dummy 1
execute if data storage spiced:temp preparation_plate.Items[{id:"minecraft:blue_ice"}] run scoreboard players add $ice_count spiced.dummy 1
execute if data storage spiced:temp preparation_plate.Items[{id:"minecraft:packed_ice"}] run scoreboard players add $ice_count spiced.dummy 1

return 1