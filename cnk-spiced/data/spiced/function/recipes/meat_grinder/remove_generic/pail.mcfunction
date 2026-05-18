data modify storage spiced:temp meat_grinder.pail set from storage spiced:temp meat_grinder.Items[{components:{"minecraft:custom_data":{spiced:{pail:{}}}}}].components."minecraft:custom_data".spiced.pail

execute store result score $quantity spiced.dummy run data get storage spiced:temp meat_grinder.pail.quantity
scoreboard players remove $quantity spiced.dummy 1
execute if score $quantity spiced.dummy matches 0 run return run loot spawn ~ ~-0.3 ~ loot spiced:tools/pail

execute store result storage spiced:temp meat_grinder.pail_data.quantity int 1 run scoreboard players get $quantity spiced.dummy
data modify storage spiced:temp meat_grinder.pail_data.liquid set from storage spiced:temp meat_grinder.pail.liquid
data modify storage spiced:temp meat_grinder.pail_data.color set from storage spiced:temp meat_grinder.pail.color
data modify storage spiced:temp meat_grinder.pail_data.max_quantity set value 32

execute if data storage spiced:temp meat_grinder.pail{liquid:"water"} positioned ~ ~-0.3 ~ run function spiced:pail/break/water with storage spiced:temp meat_grinder.pail_data
execute if data storage spiced:temp meat_grinder.pail{liquid:"milk"} positioned ~ ~-0.3 ~ run function spiced:pail/break/milk with storage spiced:temp meat_grinder.pail_data