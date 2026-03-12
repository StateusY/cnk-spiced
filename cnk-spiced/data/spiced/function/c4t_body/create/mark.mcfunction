execute as @p[tag=spiced.interact_c4t_body] run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}

tag @p[tag=spiced.interact_c4t_body] add spiced.c4t_advancement

execute on vehicle run tag @s add spiced.c4t_body_filled
execute on vehicle run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}