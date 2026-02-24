data modify storage cnk:temp meat_grinder.last_recipe set from entity @s item.components."minecraft:custom_data".cnk.last_recipe
data modify storage cnk:temp meat_grinder.last_recipe[].count set value 1
execute if data storage cnk:temp meat_grinder.last_recipe[{components:{"minecraft:custom_data":{cnk:{block:{type:"pail"}}}}}] run function spiced:meat_grinder/repeat/pail
execute store result score $bowl_item_count cnk.dummy run data get storage cnk:temp meat_grinder.last_recipe

#remove duplicates, increase count
function spiced:meat_grinder/repeat/compress/main

execute store result score $compress_item_count cnk.dummy run data get storage cnk:temp meat_grinder.compress

#ensure items exist
function spiced:meat_grinder/repeat/check/main

execute if score $items_found cnk.dummy matches 0 run return fail

#all items found, GET EM OUTTA HERE
function spiced:meat_grinder/repeat/remove/main

#start inserting items
execute unless score $bowl_item_count cnk.dummy matches 1.. run return fail
data modify storage cnk:temp meat_grinder.input set from storage cnk:temp meat_grinder.last_recipe[0]
function spiced:meat_grinder/repeat/insert

execute unless score $bowl_item_count cnk.dummy matches 2.. run return run function spiced:meat_grinder/grind/main
data modify storage cnk:temp meat_grinder.input set from storage cnk:temp meat_grinder.last_recipe[1]
function spiced:meat_grinder/repeat/insert

execute unless score $bowl_item_count cnk.dummy matches 3.. run return run function spiced:meat_grinder/grind/main
data modify storage cnk:temp meat_grinder.input set from storage cnk:temp meat_grinder.last_recipe[2]
function spiced:meat_grinder/repeat/insert

execute unless score $bowl_item_count cnk.dummy matches 4.. run return run function spiced:meat_grinder/grind/main
data modify storage cnk:temp meat_grinder.input set from storage cnk:temp meat_grinder.last_recipe[3]
function spiced:meat_grinder/repeat/insert

function spiced:meat_grinder/grind/main