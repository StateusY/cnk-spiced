advancement revoke @s only spiced:interact_cutting_board
scoreboard players set $interact_cutting_board_check spiced.dummy 0
tag @s add spiced.interact_cutting_board
execute as @e[type=minecraft:interaction, tag=spiced.cutting_board_interaction, distance=..20] at @s run function spiced:cutting_board/interact/check
tag @s remove spiced.interact_cutting_board
