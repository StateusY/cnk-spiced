execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true,"type":"flair"}}] run advancement grant @s only spiced:c4t_translation_flair
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true,"type":"spite"}}] run advancement grant @s only spiced:c4t_translation_spite
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true,"type":"study"}}] run advancement grant @s only spiced:c4t_translation_study

item replace entity @s weapon.mainhand with air

title @s actionbar [{text:"<C4T>", color:"gold"},{text:" TRANSLATION KEY ACTIVATED",color:"green"}]
playsound minecraft:block.respawn_anchor.charge neutral @s ~ ~ ~ 0.5 2
playsound minecraft:block.amethyst_block.place neutral @s ~ ~ ~ 1 1.5
playsound minecraft:item.lodestone_compass.lock neutral @s ~ ~ ~ 1 1
playsound minecraft:block.sculk_shrieker.place neutral @s ~ ~ ~ 1 1