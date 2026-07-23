#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

data merge entity @s {view_range:0.5f,height:1,width:1,transformation:{left_rotation:[0f,0.5f,0f,1f],right_rotation:[-1f,0f,0f,1f],scale:[0.55f,0.55f,0.55f],translation:[0.0f,0.12f,-0.05f]},Tags:["spiced.cutting_board_item","summit.dynamic","summit.booth_entity.spiced"]}
execute if entity @a[tag=spiced.interact_cutting_board,distance=..20,tag=spiced.cutting_board_offhand,limit=1] run item replace entity @s contents from entity @a[tag=spiced.interact_cutting_board,distance=..20,limit=1] weapon.offhand
execute if entity @a[tag=spiced.interact_cutting_board,distance=..20,tag=!spiced.cutting_board_offhand,limit=1] run item replace entity @s contents from entity @a[tag=spiced.interact_cutting_board,distance=..20,limit=1] weapon.mainhand
execute at @s rotated as @n[type=minecraft:item_display,tag=spiced.cutting_board] run rotate @s ~ ~
ride @s mount @n[type=minecraft:item_display,tag=spiced.cutting_board]
playsound minecraft:block.bamboo_wood.step block @a[distance=..7] ~ ~ ~ 1 2

swing @a[tag=spiced.interact_cutting_board,distance=..20,tag=!spiced.cutting_board_offhand,limit=1] mainhand
swing @a[tag=spiced.interact_cutting_board,distance=..20,tag=spiced.cutting_board_offhand,limit=1] offhand

execute if entity @a[tag=spiced.interact_cutting_board,distance=..20,tag=spiced.cutting_board_offhand,limit=1] run item modify entity @a[tag=spiced.interact_cutting_board,distance=..20,limit=1] weapon.offhand {"function":"minecraft:set_count","count":-1,"add":true}
execute if entity @a[tag=spiced.interact_cutting_board,distance=..20,tag=!spiced.cutting_board_offhand,limit=1] run item modify entity @a[tag=spiced.interact_cutting_board,distance=..20,limit=1] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}