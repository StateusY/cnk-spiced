scoreboard players set $water_count spiced.dummy 0

execute if data storage spiced:temp meat_grinder.Items[{id:"minecraft:water_bucket"}] run scoreboard players add $water_count spiced.dummy 1
execute if data storage spiced:temp meat_grinder.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run scoreboard players add $water_count spiced.dummy 1
execute if data storage spiced:temp meat_grinder.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"water"}}}}}] run scoreboard players add $water_count spiced.dummy 1

return 1