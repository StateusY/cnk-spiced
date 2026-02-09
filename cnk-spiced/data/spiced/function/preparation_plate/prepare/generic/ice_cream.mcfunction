scoreboard players set $ice_cream_count cnk.dummy 0

execute store result score $ice_cream_count cnk.dummy run data remove storage cnk:temp preparation_plate.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"ice_cream"}}}}}]

return 1