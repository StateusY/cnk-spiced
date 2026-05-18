data modify storage spiced:temp preparation_plate.pail set from storage spiced:temp preparation_plate.Items[{components:{"minecraft:custom_data":{spiced:{pail:{}}}}}].components."minecraft:custom_data".spiced.pail

execute store result score $quantity spiced.dummy run data get storage spiced:temp preparation_plate.pail.quantity
scoreboard players remove $quantity spiced.dummy 1
execute if score $quantity spiced.dummy matches 0 run return run loot spawn ~ ~-0.3 ~ loot spiced:tools/pail

execute store result storage spiced:temp preparation_plate.pail_data.quantity int 1 run scoreboard players get $quantity spiced.dummy
data modify storage spiced:temp preparation_plate.pail_data.liquid set from storage spiced:temp preparation_plate.pail.liquid
data modify storage spiced:temp preparation_plate.pail_data.color set from storage spiced:temp preparation_plate.pail.color
data modify storage spiced:temp preparation_plate.pail_data.max_quantity set value 32

execute if data storage spiced:temp preparation_plate.pail{liquid:"water"} positioned ~ ~-0.3 ~ run function spiced:pail/break/water with storage spiced:temp preparation_plate.pail_data
execute if data storage spiced:temp preparation_plate.pail{liquid:"milk"} positioned ~ ~-0.3 ~ run function spiced:pail/break/milk with storage spiced:temp preparation_plate.pail_data