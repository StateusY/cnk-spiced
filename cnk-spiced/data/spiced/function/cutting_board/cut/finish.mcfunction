#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players set $cut_check spiced.dummy 1
playsound spiced:block.cutting_board.chop block @a ~ ~ ~ 0.8 0.8
playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 0.8 2
kill @s

execute as @p[tag=spiced.interact_cutting_board,distance=..20] at @s run function spiced:cutting_board/cut/on_chef