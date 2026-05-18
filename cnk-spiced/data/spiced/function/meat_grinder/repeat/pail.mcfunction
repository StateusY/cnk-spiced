scoreboard players reset $quantity spiced.dummy
execute store result score $quantity spiced.dummy run data get storage spiced:temp meat_grinder.last_recipe[{components:{"minecraft:custom_data":{spiced:{block:{type:"pail"}}}}}].components."minecraft:custom_data".spiced.pail.quantity

execute unless score $quantity spiced.dummy matches 1.. run return fail
execute store result storage spiced:temp meat_grinder.last_recipe[{components:{"minecraft:custom_data":{spiced:{block:{type:"pail"}}}}}].components."minecraft:custom_data".spiced.pail.quantity int 1 run scoreboard players remove $quantity spiced.dummy 1