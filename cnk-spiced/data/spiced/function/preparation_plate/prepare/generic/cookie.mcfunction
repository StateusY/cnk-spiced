scoreboard players set $cookie_count cnk.dummy 0

execute store result score $cookie_count cnk.dummy run data remove storage cnk:temp preparation_plate.Items[{id:"minecraft:cookie"}]

return 1