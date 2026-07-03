#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute on target run tag @s add spiced.interact_cutting_board
execute on vehicle at @s run function spiced:cutting_board/interact/on_display
execute on target run tag @s remove spiced.interact_cutting_board