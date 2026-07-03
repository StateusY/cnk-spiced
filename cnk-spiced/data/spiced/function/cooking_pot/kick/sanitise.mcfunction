#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

data modify storage spiced:temp cooking_pot.kick.uuid set from entity @s data.spiced.last_interact_uuid

execute unless data storage spiced:temp cooking_pot.kick.components run data modify storage spiced:temp cooking_pot.kick.components set value {}
execute unless data storage spiced:temp cooking_pot.kick.count run data modify storage spiced:temp cooking_pot.kick.components set value 1