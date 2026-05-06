execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.cookbook run return run function spiced:cookbook/lectern/ray/hit
execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.distiller_book run return run function spiced:cookbook/lectern/ray/hit
execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.foodie_book run return run function spiced:cookbook/lectern/ray/hit

scoreboard players add $distance spiced.dummy 1
execute if score $distance spiced.dummy < $reach spiced.dummy positioned ^ ^ ^0.01 run function spiced:cookbook/lectern/ray/ray