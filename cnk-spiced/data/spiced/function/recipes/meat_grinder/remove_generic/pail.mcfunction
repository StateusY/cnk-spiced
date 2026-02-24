data modify storage cnk:temp meat_grinder.pail set from storage cnk:temp meat_grinder.Items[{components:{"minecraft:custom_data":{cnk:{pail:{}}}}}].components."minecraft:custom_data".cnk.pail

execute store result score $quantity cnk.dummy run data get storage cnk:temp meat_grinder.pail.quantity
scoreboard players remove $quantity cnk.dummy 1
execute if score $quantity cnk.dummy matches 0 run return run loot spawn ~ ~-0.3 ~ loot cnk:tools/pail

execute store result storage cnk:temp meat_grinder.pail_data.quantity int 1 run scoreboard players get $quantity cnk.dummy
data modify storage cnk:temp meat_grinder.pail_data.liquid set from storage cnk:temp meat_grinder.pail.liquid
data modify storage cnk:temp meat_grinder.pail_data.color set from storage cnk:temp meat_grinder.pail.color
data modify storage cnk:temp meat_grinder.pail_data.max_quantity set value 32

execute if data storage cnk:temp meat_grinder.pail{liquid:"water"} positioned ~ ~-0.3 ~ run function cnk:pail/break/water with storage cnk:temp meat_grinder.pail_data
execute if data storage cnk:temp meat_grinder.pail{liquid:"milk"} positioned ~ ~-0.3 ~ run function cnk:pail/break/milk with storage cnk:temp meat_grinder.pail_data