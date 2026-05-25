#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if score @s spiced.hit_timer matches 60 run scoreboard players reset @s spiced.hit_count
execute if score @s spiced.hit_timer matches 60 run return run scoreboard players reset @s spiced.hit_timer
execute if score @s spiced.hit_count matches 1..2 run return run scoreboard players add @s spiced.hit_timer 1

function spiced:mixing_bowl/break/break