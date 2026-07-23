execute as @a[tag=summit.in_booth.spiced,distance=..50] at @s run function spiced:players

# block ticks
execute as @e[type=minecraft:item_display,tag=spiced.mortar_and_pestle,distance=..50] at @s run function spiced:mortar_and_pestle/tick
execute as @e[type=minecraft:item_display,tag=spiced.cooking_pot,distance=..50] at @s run function spiced:cooking_pot/tick
execute as @e[type=minecraft:item_display,tag=spiced.mixing_bowl,distance=..50] at @s run function spiced:mixing_bowl/tick
execute as @e[type=minecraft:item_display,tag=spiced.cutting_board,distance=..50] at @s run function spiced:cutting_board/tick

execute as 21d3d2bf-dbef-4e82-8234-7b39f63f782a at @s if entity @p[tag=spiced.cellar_dwellar,distance=..4.5] run return run data modify entity @s view_range set value 0
execute as 21d3d2bf-dbef-4e82-8234-7b39f63f782a at @s unless entity @p[tag=spiced.cellar_dwellar,distance=..4.5] run data modify entity @s view_range set value 1
execute as 0692c8f9-edfa-4c00-b8c4-bc4dfbeea144 at @s if entity @p[tag=spiced.cellar_dwellar,distance=..4.5] run return run data modify entity @s view_range set value 0
data modify entity 0692c8f9-edfa-4c00-b8c4-bc4dfbeea144 view_range set value 1