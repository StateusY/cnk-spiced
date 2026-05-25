scoreboard players add $global spiced.item_count 1
execute if score $global spiced.item_count matches 1 run data merge entity @s {transformation:{left_rotation:[0f,0.7f,0f,1f],right_rotation:[-1f,0.0f,0f,1f],scale:[0.4f,0.4f,0.4f],translation:[-0.1f,-0.42f,0.1f]},Tags:["spiced.mixing_bowl_item","spiced.mixing_bowl_1"],interpolation_duration:3,teleport_duration:2}
execute if score $global spiced.item_count matches 2 run data merge entity @s {transformation:{left_rotation:[0f,1.1f,0f,1f],right_rotation:[-1f,0.2f,-0.2f,1f],scale:[0.4f,0.4f,0.4f],translation:[-0.1f,-0.41f,-0.1f]},Tags:["spiced.mixing_bowl_item","spiced.mixing_bowl_2"],interpolation_duration:3,teleport_duration:2}
execute if score $global spiced.item_count matches 3 run data merge entity @s {transformation:{left_rotation:[0f,0.0f,0f,1f],right_rotation:[-1f,0.2f,0f,1f],scale:[0.4f,0.4f,0.4f],translation:[0.1f,-0.41f,0.1f]},Tags:["spiced.mixing_bowl_item","spiced.mixing_bowl_3"],interpolation_duration:3,teleport_duration:2}
execute if score $global spiced.item_count matches 4 run data merge entity @s {transformation:{left_rotation:[0f,0.95f,0f,1f],right_rotation:[1.15f,-0.2f,-0.1f,1f],scale:[0.4f,0.4f,0.4f],translation:[0.1f,-0.4f,-0.1f]},Tags:["spiced.mixing_bowl_item","spiced.mixing_bowl_4"],interpolation_duration:3,teleport_duration:2}

execute if score $hand_place spiced.dummy matches 1 run item replace entity @s contents from entity @p[tag=spiced.interact_mixing_bowl,distance=..20] weapon.mainhand
execute if score $hand_place spiced.dummy matches 0 run data modify entity @s item set from storage spiced:temp mixing_bowl.input

execute at @s rotated as @n[type=minecraft:item_display,tag=spiced.mixing_bowl] run rotate @s ~ ~
ride @s mount @n[type=minecraft:item_display,tag=spiced.mixing_bowl]
playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2

execute if score $hand_place spiced.dummy matches 1 run item modify entity @p[tag=spiced.interact_mixing_bowl,distance=..20] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}