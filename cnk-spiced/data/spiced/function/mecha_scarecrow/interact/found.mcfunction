data remove entity @s interaction
say say
execute if items entity @p[tag=cnk.interact_scarecrow] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"ingredient":{"type":"mecha_haybrains"}}}] on vehicle rotated as @s run function spiced:mecha_scarecrow/transform
