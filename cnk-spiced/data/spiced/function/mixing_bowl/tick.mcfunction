#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

# increase idle time, clear mixing bowl if idle for 2400 ticks (2 minutes)
execute if score @s spiced.item_count matches 1.. run scoreboard players add @s spiced.idle_time 1
execute if score @s spiced.idle_time matches 2400.. run function spiced:mixing_bowl/clear

# miiiiiix
execute if entity @s[tag=spiced.mixing] run function spiced:mixing_bowl/mix/process