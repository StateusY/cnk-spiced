#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

data merge entity @s {transformation:{left_rotation:[0f,0.5f,0f,1f],right_rotation:[-1f,0f,0f,1f],scale:[0.55f,0.55f,0.55f],translation:[0.0f,0.12f,-0.05f]},Tags:["spiced.cutting_board_item"]}
execute if entity @p[tag=spiced.interact_cutting_board,distance=..20,tag=spiced.cutting_board_offhand] run item replace entity @s contents from entity @p[tag=spiced.interact_cutting_board,distance=..20] weapon.offhand
execute if entity @p[tag=spiced.interact_cutting_board,distance=..20,tag=!spiced.cutting_board_offhand] run item replace entity @s contents from entity @p[tag=spiced.interact_cutting_board,distance=..20] weapon.mainhand
execute at @s rotated as @n[type=minecraft:item_display,tag=spiced.cutting_board] run rotate @s ~ ~
ride @s mount @n[type=minecraft:item_display,tag=spiced.cutting_board]
playsound minecraft:block.bamboo_wood.step block @a[tag=summit.in_booth.spiced] ~ ~ ~ 1 2

swing @p[tag=spiced.interact_cutting_board,distance=..20,tag=!spiced.cutting_board_offhand] mainhand
swing @p[tag=spiced.interact_cutting_board,distance=..20,tag=spiced.cutting_board_offhand] offhand

execute if entity @p[tag=spiced.interact_cutting_board,distance=..20,tag=spiced.cutting_board_offhand] run item modify entity @p[tag=spiced.interact_cutting_board,distance=..20] weapon.offhand {"function":"minecraft:set_count","count":-1,"add":true}
execute if entity @p[tag=spiced.interact_cutting_board,distance=..20,tag=!spiced.cutting_board_offhand] run item modify entity @p[tag=spiced.interact_cutting_board,distance=..20] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
execute as @p[tag=spiced.interact_cutting_board,distance=..20] if entity @s run function spiced:cutting_board/item/modify