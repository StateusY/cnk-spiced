execute align xyz summon minecraft:marker run function spiced:cookbook/lectern/ray/store_pos
execute store result score @s spiced.lectern_x run data get storage spiced:temp lectern.pos[0]
execute store result score @s spiced.lectern_y run data get storage spiced:temp lectern.pos[1]
execute store result score @s spiced.lectern_z run data get storage spiced:temp lectern.pos[2]

tag @s add spiced.via_lectern

execute if data block ~ ~ ~ Book.components."minecraft:custom_data".spiced.cookbook run return run tag @s add spiced.lectern_cookbook_open
execute if data block ~ ~ ~ Book.components."minecraft:custom_data".spiced.distiller_book run return run tag @s add spiced.lectern_distiller_book_open
execute if data block ~ ~ ~ Book.components."minecraft:custom_data".spiced.foodie_book run return run tag @s add spiced.lectern_foodie_book_open