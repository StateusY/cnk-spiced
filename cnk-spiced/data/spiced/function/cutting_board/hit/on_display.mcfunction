#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players reset @s spiced.idle_time

execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.cutting_board_item] at @s run return run function spiced:cutting_board/item/remove