#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if entity @s[tag=spiced.mixing] run return fail
swing @p[tag=spiced.interact_mixing_bowl,distance=..20,limit=1] mainhand
return run tag @s add spiced.mixing