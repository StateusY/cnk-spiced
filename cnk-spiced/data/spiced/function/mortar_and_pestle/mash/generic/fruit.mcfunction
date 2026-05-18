scoreboard players set $fruit_count spiced.dummy 0

execute if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"grapes"}}}}}] run scoreboard players add $fruit_count spiced.dummy 1
execute if data storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:apple"}] run scoreboard players add $fruit_count spiced.dummy 1
execute if data storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:sweet_berries"}] run scoreboard players add $fruit_count spiced.dummy 1
execute if data storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:melon_slice"}] run scoreboard players add $fruit_count spiced.dummy 1
execute if data storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:glow_berries"}] run scoreboard players add $fruit_count spiced.dummy 1
execute if data storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add $fruit_count spiced.dummy 1

return 1