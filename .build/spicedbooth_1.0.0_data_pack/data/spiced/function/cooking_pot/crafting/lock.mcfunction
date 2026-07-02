execute if score $cooking_pot_lock spiced.dummy matches 1 run return fail
scoreboard players set $cooking_pot_lock spiced.dummy 1
execute if entity @s[tag=spiced.stove, tag=!spiced.fizz_oven] run particle minecraft:flame ^ ^0.5 ^-0.4 0.15 0.06 0.15 0 1
execute if score @s spiced.cook_time matches 1 run function spiced:cooking_pot/effects/start_cooking
execute if score @s spiced.cook_time matches 50.. run return 1
scoreboard players add @s spiced.cook_time 1
return fail
