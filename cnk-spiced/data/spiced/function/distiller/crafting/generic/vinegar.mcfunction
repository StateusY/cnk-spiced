scoreboard players set $vinegar_count cnk.dummy 0

execute if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"apple_cider_vinegar"}}}}}] run scoreboard players add $vinegar_count cnk.dummy 1
execute if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"vinegar"}}}}}] run scoreboard players add $vinegar_count cnk.dummy 1

return 1