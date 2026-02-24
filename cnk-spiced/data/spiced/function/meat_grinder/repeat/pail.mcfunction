scoreboard players reset $quantity cnk.dummy
execute store result score $quantity cnk.dummy run data get storage cnk:temp meat_grinder.last_recipe[{components:{"minecraft:custom_data":{cnk:{block:{type:"pail"}}}}}].components."minecraft:custom_data".cnk.pail.quantity

execute unless score $quantity cnk.dummy matches 1.. run return fail
execute store result storage cnk:temp meat_grinder.last_recipe[{components:{"minecraft:custom_data":{cnk:{block:{type:"pail"}}}}}].components."minecraft:custom_data".cnk.pail.quantity int 1 run scoreboard players remove $quantity cnk.dummy 1