scoreboard players set $cookie_count spiced.dummy 0

execute store result score $cookie_count spiced.dummy run data remove storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:cookie"}]

return 1