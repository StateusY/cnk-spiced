scoreboard players set $wine_count cnk.dummy 0

execute if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{wine:{}}}}}] run scoreboard players add $wine_count cnk.dummy 1

return 1