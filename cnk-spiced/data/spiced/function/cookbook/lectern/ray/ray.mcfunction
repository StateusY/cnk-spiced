#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".spiced.cookbook run return run function spiced:cookbook/lectern/ray/hit
execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".spiced.distiller_book run return run function spiced:cookbook/lectern/ray/hit
execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".spiced.foodie_book run return run function spiced:cookbook/lectern/ray/hit

scoreboard players add $distance spiced.dummy 1
execute if score $distance spiced.dummy < $reach spiced.dummy positioned ^ ^ ^0.01 run function spiced:cookbook/lectern/ray/ray