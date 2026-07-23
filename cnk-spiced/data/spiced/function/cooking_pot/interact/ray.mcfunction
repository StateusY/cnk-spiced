#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if block ~ ~ ~ minecraft:hopper[facing=down] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @n[type=minecraft:item_display,tag=spiced.cooking_pot,distance=..0.1] run return run function spiced:cooking_pot/interact/store

scoreboard players add $distance spiced.dummy 1
execute if score $distance spiced.dummy < $reach spiced.dummy positioned ^ ^ ^0.01 run function spiced:cooking_pot/interact/ray