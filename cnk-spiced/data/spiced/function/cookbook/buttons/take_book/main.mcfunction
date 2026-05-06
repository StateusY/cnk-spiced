function spiced:cookbook/buttons/close
execute unless entity @s[tag=spiced.via_lectern] run return fail

execute store result storage spiced:temp lectern.x int 1 run scoreboard players get @s spiced.lectern_x
execute store result storage spiced:temp lectern.y int 1 run scoreboard players get @s spiced.lectern_y
execute store result storage spiced:temp lectern.z int 1 run scoreboard players get @s spiced.lectern_z

scoreboard players set $take_success spiced.dummy 1
function spiced:cookbook/buttons/take_book/macro with storage spiced:temp lectern
execute if score $take_success spiced.dummy matches 0 run return fail

loot give @s loot spiced:other/demo_cookbook