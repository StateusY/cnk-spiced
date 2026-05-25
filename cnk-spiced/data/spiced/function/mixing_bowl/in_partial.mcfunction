#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute positioned ~ ~-0.5 ~ unless predicate spiced:partial_block positioned ~ ~ ~ run return run function spiced:mixing_bowl/break/break
execute if score @s spiced.hit_count matches 1.. run function spiced:mixing_bowl/break/check