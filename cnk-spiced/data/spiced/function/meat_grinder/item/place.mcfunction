scoreboard players add $global cnk.item_count 1
execute if score $global cnk.item_count matches 1 run data merge entity @s {transformation:{left_rotation:[1f,0.7f,1f,1f],right_rotation:[-1f,0.0f,0f,1f],scale:[0.4f,0.4f,0.4f],translation:[0f,.4f,0.1f]},Tags:["spiced.meat_grinder_item","spiced.meat_grinder_1"],interpolation_duration:3,teleport_duration:2}
# execute if score $global cnk.item_count matches 2 run data merge entity @s {transformation:{left_rotation:[0f,1.1f,0f,1f],right_rotation:[-1f,0.2f,-0.2f,1f],scale:[0.4f,0.4f,0.4f],translation:[-0.1f,-0.41f,-0.1f]},Tags:["spiced.meat_grinder_item","spiced.meat_grinder_2"],interpolation_duration:3,teleport_duration:2}
# execute if score $global cnk.item_count matches 3 run data merge entity @s {transformation:{left_rotation:[0f,0.0f,0f,1f],right_rotation:[-1f,0.2f,0f,1f],scale:[0.4f,0.4f,0.4f],translation:[0.1f,-0.41f,0.1f]},Tags:["spiced.meat_grinder_item","spiced.meat_grinder_3"],interpolation_duration:3,teleport_duration:2}
# execute if score $global cnk.item_count matches 4 run data merge entity @s {transformation:{left_rotation:[0f,0.95f,0f,1f],right_rotation:[1.15f,-0.2f,-0.1f,1f],scale:[0.4f,0.4f,0.4f],translation:[0.1f,-0.4f,-0.1f]},Tags:["spiced.meat_grinder_item","spiced.meat_grinder_4"],interpolation_duration:3,teleport_duration:2}

execute if score $hand_place cnk.dummy matches 1 run item replace entity @s contents from entity @p[tag=spiced.interact_meat_grinder] weapon.mainhand
execute if score $hand_place cnk.dummy matches 0 run data modify entity @s item set from storage cnk:temp meat_grinder.input

execute at @s rotated as @n[type=minecraft:item_display,tag=spiced.meat_grinder] run tp @s ~ ~ ~ ~ ~
ride @s mount @n[type=minecraft:item_display,tag=spiced.meat_grinder]
playsound minecraft:block.iron.step block @a ~ ~ ~ 1 2

execute if score $hand_place cnk.dummy matches 1 run item modify entity @p[tag=spiced.interact_meat_grinder] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}