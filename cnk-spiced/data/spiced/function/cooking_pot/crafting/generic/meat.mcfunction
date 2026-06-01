#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players set $meat_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:porkchop"}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:chicken"}] run scoreboard players add $meat_count spiced.dummy 1
return 1