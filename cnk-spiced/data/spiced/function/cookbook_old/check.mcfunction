#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players set @s spiced.use_book 0
tag @s remove spiced.via_lectern

execute if entity @s[predicate=spiced:cookbook] run return run function spiced:cookbook/open