scoreboard players set $vinegar_count spiced.dummy 0

execute if data storage spiced:temp distiller.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"apple_cider_vinegar"}}}}}] run scoreboard players add $vinegar_count spiced.dummy 1
execute if data storage spiced:temp distiller.Items[{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"vinegar"}}}}}] run scoreboard players add $vinegar_count spiced.dummy 1

return 1