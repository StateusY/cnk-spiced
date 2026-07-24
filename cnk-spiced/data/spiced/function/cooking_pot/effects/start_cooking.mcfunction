#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}
playsound cnk:block.cooking_pot.cooking block @a[tag=summit.in_booth.spiced,distance=..6] ~ ~ ~ 0.6 1
scoreboard players reset @s spiced.idle_time