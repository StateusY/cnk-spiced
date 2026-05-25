#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if entity @s[tag=spiced.fizz_oven] run playsound minecraft:block.decorated_pot.place block @a ~ ~ ~ 1 0.7
execute if entity @s[tag=spiced.fizz_oven] run playsound minecraft:block.copper_door.open block @a ~ ~ ~ 1 0.6
execute if entity @s[tag=spiced.stove] run stopsound @a[distance=..6] block minecraft:block.fire.ambient
execute if entity @s[tag=!spiced.stove] run stopsound @a[distance=..6] block spiced:block.cooking_pot.cooking

scoreboard players reset @s spiced.cook_time
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}