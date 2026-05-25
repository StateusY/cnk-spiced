#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if entity @s[tag=spiced.stove] run return run playsound minecraft:block.campfire.crackle block @a[distance=..6] ~ ~ ~ 0.2 1
playsound spiced:block.cooking_pot.idling block @a[distance=..6] ~ ~ ~ 0.2 1