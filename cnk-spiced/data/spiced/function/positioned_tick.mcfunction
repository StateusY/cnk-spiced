execute as @a[tag=summit.in_booth.spiced,distance=..50] at @s run function spiced:players

# block ticks
execute as @e[tag=spiced.mortar_and_pestle,distance=..50,type=minecraft:item_display] at @s run function spiced:mortar_and_pestle/tick
execute as @e[tag=spiced.cooking_pot,distance=..50,type=minecraft:item_display] at @s run function spiced:cooking_pot/tick
execute as @e[tag=spiced.mixing_bowl,distance=..50,type=minecraft:item_display] at @s run function spiced:mixing_bowl/tick
execute as @e[tag=spiced.cutting_board,distance=..50,type=minecraft:item_display] at @s run function spiced:cutting_board/tick
