#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

# increase idle time, clear cutting board if idle for 2400 ticks (2 minutes)
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.cutting_board_item] on vehicle run scoreboard players add @s spiced.idle_time 1
execute if score @s spiced.idle_time matches 2400.. run function spiced:cutting_board/clear