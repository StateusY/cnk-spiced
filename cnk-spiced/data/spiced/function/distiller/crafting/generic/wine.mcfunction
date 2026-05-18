scoreboard players set $wine_count spiced.dummy 0

execute if data storage spiced:temp distiller.Items[{components:{"minecraft:custom_data":{spiced:{wine:{}}}}}] run scoreboard players add $wine_count spiced.dummy 1

return 1