#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if score $cooking_pot_lock spiced.dummy matches 1 run return fail
scoreboard players set $cooking_pot_lock spiced.dummy 1

execute if entity @s[tag=spiced.stove,tag=!spiced.fizz_oven] run particle minecraft:flame ^ ^0.5 ^-0.4 0.15 0.06 0.15 0 1

execute if score @s spiced.cook_time matches 1 run function spiced:cooking_pot/effects/start_cooking
# execute if score @s[tag=spiced.fizz_oven] spiced.cook_time matches 1 run function spiced:cooking_pot/effects/fizz_oven_steam
# execute if score @s[tag=spiced.fizz_oven] spiced.cook_time matches 10 run function spiced:cooking_pot/effects/fizz_oven_steam
# execute if score @s[tag=spiced.fizz_oven] spiced.cook_time matches 20 run function spiced:cooking_pot/effects/fizz_oven_steam
# execute if score @s[tag=spiced.fizz_oven] spiced.cook_time matches 30 run function spiced:cooking_pot/effects/fizz_oven_steam
# execute if score @s[tag=spiced.fizz_oven] spiced.cook_time matches 40 run function spiced:cooking_pot/effects/fizz_oven_steam
execute if score @s spiced.cook_time matches 50.. run return 1

# Still cooking, don't unlock
scoreboard players add @s spiced.cook_time 1
return fail