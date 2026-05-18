data modify storage spiced:temp mortar_and_pestle.pail set from storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{spiced:{pail:{}}}}}].components."minecraft:custom_data".spiced.pail

execute store result score $quantity spiced.dummy run data get storage spiced:temp mortar_and_pestle.pail.quantity
scoreboard players remove $quantity spiced.dummy 1
execute if score $quantity spiced.dummy matches 0 run return run loot spawn ~ ~-0.3 ~ loot spiced:tools/pail

execute store result storage spiced:temp mortar_and_pestle.pail_data.quantity int 1 run scoreboard players get $quantity spiced.dummy
data modify storage spiced:temp mortar_and_pestle.pail_data.liquid set from storage spiced:temp mortar_and_pestle.pail.liquid
data modify storage spiced:temp mortar_and_pestle.pail_data.color set from storage spiced:temp mortar_and_pestle.pail.color
data modify storage spiced:temp mortar_and_pestle.pail_data.max_quantity set value 32

execute if data storage spiced:temp mortar_and_pestle.pail{liquid:"water"} positioned ~ ~-0.3 ~ run function spiced:pail/break/water with storage spiced:temp mortar_and_pestle.pail_data
execute if data storage spiced:temp mortar_and_pestle.pail{liquid:"milk"} positioned ~ ~-0.3 ~ run function spiced:pail/break/milk with storage spiced:temp mortar_and_pestle.pail_data