data modify storage cnk:temp preparation_plate.pail set from storage cnk:temp preparation_plate.Items[{components:{"minecraft:custom_data":{cnk:{pail:{}}}}}].components."minecraft:custom_data".cnk.pail

execute store result score $quantity cnk.dummy run data get storage cnk:temp preparation_plate.pail.quantity
scoreboard players remove $quantity cnk.dummy 1
execute if score $quantity cnk.dummy matches 0 run return run loot spawn ~ ~-0.3 ~ loot cnk:tools/pail

execute store result storage cnk:temp preparation_plate.pail_data.quantity int 1 run scoreboard players get $quantity cnk.dummy
data modify storage cnk:temp preparation_plate.pail_data.liquid set from storage cnk:temp preparation_plate.pail.liquid
data modify storage cnk:temp preparation_plate.pail_data.color set from storage cnk:temp preparation_plate.pail.color
data modify storage cnk:temp preparation_plate.pail_data.max_quantity set value 32

execute if data storage cnk:temp preparation_plate.pail{liquid:"water"} positioned ~ ~-0.3 ~ run function cnk:pail/break/water with storage cnk:temp preparation_plate.pail_data
execute if data storage cnk:temp preparation_plate.pail{liquid:"milk"} positioned ~ ~-0.3 ~ run function cnk:pail/break/milk with storage cnk:temp preparation_plate.pail_data