scoreboard players set $flesh_count spiced.dummy 0

execute store result score $flesh_count spiced.dummy run data remove storage spiced:temp preparation_plate.Items[{id:"minecraft:rotten_flesh"}]

return 1