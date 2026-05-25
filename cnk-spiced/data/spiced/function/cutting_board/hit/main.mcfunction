#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

advancement revoke @s only spiced:hit_cutting_board

scoreboard players set $hit_cutting_board_check spiced.dummy 0

tag @s add spiced.hit_cutting_board
execute as @e[type=minecraft:interaction,tag=spiced.cutting_board_interaction,distance=..20] run function spiced:cutting_board/hit/check
tag @s remove spiced.hit_cutting_board