#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute on target run tag @s add spiced.interact_mixing_bowl
execute on vehicle at @s run function spiced:mixing_bowl/interact/on_display
execute on target run tag @s remove spiced.interact_mixing_bowl