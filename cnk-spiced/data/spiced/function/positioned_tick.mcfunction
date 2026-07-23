execute as @a[tag=summit.in_booth.spiced,distance=..50] at @s run function spiced:players

# block ticks
execute as @e[type=minecraft:item_display,tag=spiced.mortar_and_pestle,distance=..50] at @s run function spiced:mortar_and_pestle/tick
execute as @e[type=minecraft:item_display,tag=spiced.cooking_pot,distance=..50] at @s run function spiced:cooking_pot/tick
execute as @e[type=minecraft:item_display,tag=spiced.mixing_bowl,distance=..50] at @s run function spiced:mixing_bowl/tick
execute as @e[type=minecraft:item_display,tag=spiced.cutting_board,distance=..50] at @s run function spiced:cutting_board/tick
