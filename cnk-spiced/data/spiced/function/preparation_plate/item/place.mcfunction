scoreboard players add $global cnk.item_count 1
execute if score $global cnk.item_count matches 1 run data merge entity @s {transformation:{left_rotation:[0f,0.7f,0f,1f],right_rotation:[-1f,0.0f,0f,1f],scale:[0.4f,0.4f,0.4f],translation:[-0.1f,-0.42f,0.1f]},Tags:["spiced.preparation_plate_item","spiced.preparation_plate_1"],interpolation_duration:3,teleport_duration:2}
execute if score $global cnk.item_count matches 2 run data merge entity @s {transformation:{left_rotation:[0f,1.1f,0f,1f],right_rotation:[-1f,0.2f,-0.2f,1f],scale:[0.4f,0.4f,0.4f],translation:[-0.1f,-0.41f,-0.1f]},Tags:["spiced.preparation_plate_item","spiced.preparation_plate_2"],interpolation_duration:3,teleport_duration:2}
execute if score $global cnk.item_count matches 3 run data merge entity @s {transformation:{left_rotation:[0f,0.0f,0f,1f],right_rotation:[-1f,0.2f,0f,1f],scale:[0.4f,0.4f,0.4f],translation:[0.1f,-0.41f,0.1f]},Tags:["spiced.preparation_plate_item","spiced.preparation_plate_3"],interpolation_duration:3,teleport_duration:2}
execute if score $global cnk.item_count matches 4 run data merge entity @s {transformation:{left_rotation:[0f,0.95f,0f,1f],right_rotation:[1.15f,-0.2f,-0.1f,1f],scale:[0.4f,0.4f,0.4f],translation:[0.1f,-0.4f,-0.1f]},Tags:["spiced.preparation_plate_item","spiced.preparation_plate_4"],interpolation_duration:3,teleport_duration:2}

execute if score $hand_place cnk.dummy matches 1 run item replace entity @s contents from entity @p[tag=spiced.interact_preparation_plate] weapon.mainhand
execute if score $hand_place cnk.dummy matches 0 run data modify entity @s item set from storage cnk:temp preparation_plate.input

execute at @s rotated as @n[type=minecraft:item_display,tag=spiced.preparation_plate] run tp @s ~ ~ ~ ~ ~
ride @s mount @n[type=minecraft:item_display,tag=spiced.preparation_plate]
playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2

execute if score $hand_place cnk.dummy matches 1 run item modify entity @p[tag=spiced.interact_preparation_plate] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}