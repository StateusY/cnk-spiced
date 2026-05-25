execute align xyz run summon item_display 197 66 170 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","summit.booth_entity.spiced"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:bell_pepper_crop_7"}}}
execute align xyz run summon item_display 198 66 170 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","summit.booth_entity.spiced"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:mustard_crop_3"}}}

execute positioned 220 67 190 run function spiced:mortar_and_pestle/place
execute positioned 220 66 189 run function spiced:cooking_pot/place

scoreboard players set $rotation spiced.dummy 0
data modify storage spiced:temp block.data set from block ~ ~ ~
data modify storage cnk:temp extra_tags set value ""
execute positioned 220 67 188 run function spiced:cutting_board/place

scoreboard players set $rotation spiced.dummy 0
data modify storage spiced:temp block.data set from block ~ ~ ~
data modify storage cnk:temp extra_tags set value ""
execute positioned 220 67 187 run function spiced:mixing_bowl/place