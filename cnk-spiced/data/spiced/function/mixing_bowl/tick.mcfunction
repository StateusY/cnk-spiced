#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if entity @s[tag=spiced.mixing] run function spiced:mixing_bowl/mix/process

execute if score @s spiced.hit_count matches 1.. run return run function spiced:mixing_bowl/break/check