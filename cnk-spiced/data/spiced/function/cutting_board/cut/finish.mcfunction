#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players set $cut_check spiced.dummy 1
playsound spiced:block.cutting_board.chop block @a[tag=summit.in_booth.spiced,distance=..7] ~ ~ ~ 0.8 0.8
playsound minecraft:block.bamboo_wood.hit block @a[tag=summit.in_booth.spiced,distance=..7] ~ ~ ~ 0.8 2
kill @s

execute unless data storage spiced:temp cutting_board.item.components run data modify storage spiced:temp cutting_board.item.components set value {}
function spiced:cutting_board/cut/particle with storage spiced:temp cutting_board.item