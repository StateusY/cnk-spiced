#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute at @s run playsound spiced:block.cooking_pot.finished block @a[tag=summit.in_booth.spiced,distance=..6] ~ ~ ~ 0.4 1
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}

scoreboard players reset @s spiced.cook_time
scoreboard players set @s spiced.cook_cooldown 30

particle minecraft:poof ~ ~0.3 ~ 0.1 0.1 0.1 0 10 normal @a[tag=summit.in_booth.spiced,distance=..20]