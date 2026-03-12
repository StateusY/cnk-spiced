data remove entity @s interaction
execute on vehicle if entity @s[tag=spiced.c4t_body_filled] run return fail
execute if items entity @p[tag=spiced.interact_c4t_body] weapon.mainhand *[minecraft:custom_data~{cnk:{ingredient:{type:"dough"}}}] run function spiced:c4t_body/create/mark