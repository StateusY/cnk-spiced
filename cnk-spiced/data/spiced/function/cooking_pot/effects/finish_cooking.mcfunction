#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute at @s run playsound spiced:block.cooking_pot.finished block @a[distance=..6] ~ ~ ~ 0.4 1
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}

scoreboard players reset @s spiced.cook_time
scoreboard players set @s spiced.cook_cooldown 15

execute if data entity @s data.spiced.last_interact_uuid run function spiced:cooking_pot/post_cook/find with entity @s data.spiced

execute if entity @s[tag=spiced.fizz_oven] run playsound minecraft:block.decorated_pot.place block @a ~ ~ ~ 0.4 0.7
execute if entity @s[tag=spiced.fizz_oven] run playsound minecraft:block.copper_door.open block @a ~ ~ ~ 0.4 0.6
execute if entity @s[tag=spiced.stove] run function spiced:cooking_pot/crafting/stove_motion
execute if entity @s[tag=spiced.stove] run return run particle minecraft:poof ~ ~0.4 ~ 0.1 0.1 0.1 0 4
particle minecraft:poof ~ ~0.3 ~ 0.1 0.1 0.1 0 10