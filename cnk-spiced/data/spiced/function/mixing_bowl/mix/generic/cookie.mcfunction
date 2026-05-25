scoreboard players set $cookie_count spiced.dummy 0

execute store result score $cookie_count spiced.dummy run data remove storage spiced:temp mixing_bowl.Items[{id:"minecraft:cookie"}]

return 1