execute as @p[tag=spiced.c4t_interact] run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}

tag @s add spiced.c4t_fed
data modify entity @s equipment.chest.components."minecraft:custom_model_data".floats[0] set value 2
playsound minecraft:entity.fox.eat neutral @a ~ ~ ~ 1 1.5