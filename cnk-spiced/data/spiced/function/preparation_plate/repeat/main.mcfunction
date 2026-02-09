data modify storage cnk:temp preparation_plate.last_recipe set from entity @s item.components."minecraft:custom_data".cnk.last_recipe
data modify storage cnk:temp preparation_plate.last_recipe[].count set value 1
execute if data storage cnk:temp preparation_plate.last_recipe[{components:{"minecraft:custom_data":{cnk:{block:{type:"pail"}}}}}] run function spiced:preparation_plate/repeat/pail
execute store result score $bowl_item_count cnk.dummy run data get storage cnk:temp preparation_plate.last_recipe

#remove duplicates, increase count
function spiced:preparation_plate/repeat/compress/main

execute store result score $compress_item_count cnk.dummy run data get storage cnk:temp preparation_plate.compress

#ensure items exist
function spiced:preparation_plate/repeat/check/main

execute if score $items_found cnk.dummy matches 0 run return fail

#all items found, GET EM OUTTA HERE
function spiced:preparation_plate/repeat/remove/main

#start inserting items
execute unless score $bowl_item_count cnk.dummy matches 1.. run return fail
data modify storage cnk:temp preparation_plate.input set from storage cnk:temp preparation_plate.last_recipe[0]
function spiced:preparation_plate/repeat/insert

execute unless score $bowl_item_count cnk.dummy matches 2.. run return run function spiced:preparation_plate/prepare/main
data modify storage cnk:temp preparation_plate.input set from storage cnk:temp preparation_plate.last_recipe[1]
function spiced:preparation_plate/repeat/insert

execute unless score $bowl_item_count cnk.dummy matches 3.. run return run function spiced:preparation_plate/prepare/main
data modify storage cnk:temp preparation_plate.input set from storage cnk:temp preparation_plate.last_recipe[2]
function spiced:preparation_plate/repeat/insert

execute unless score $bowl_item_count cnk.dummy matches 4.. run return run function spiced:preparation_plate/prepare/main
data modify storage cnk:temp preparation_plate.input set from storage cnk:temp preparation_plate.last_recipe[3]
function spiced:preparation_plate/repeat/insert

function spiced:preparation_plate/prepare/main