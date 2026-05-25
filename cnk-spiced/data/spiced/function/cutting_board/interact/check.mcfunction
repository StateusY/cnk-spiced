#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if score $interact_cutting_board_check spiced.dummy matches 1 run return fail

execute on target if entity @s[tag=spiced.interact_cutting_board] run scoreboard players set $interact_cutting_board_check spiced.dummy 1
execute if score $interact_cutting_board_check spiced.dummy matches 1 run function spiced:cutting_board/interact/found