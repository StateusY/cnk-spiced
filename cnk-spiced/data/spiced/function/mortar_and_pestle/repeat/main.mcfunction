data modify storage spiced:temp mortar_and_pestle.last_recipe set from entity @s item.components."minecraft:custom_data".spiced.last_recipe
data modify storage spiced:temp mortar_and_pestle.last_recipe[].count set value 1
execute if data storage spiced:temp mortar_and_pestle.last_recipe[{components:{"minecraft:custom_data":{spiced:{block:{type:"pail"}}}}}] run function spiced:mortar_and_pestle/repeat/pail
execute store result score $bowl_item_count spiced.dummy run data get storage spiced:temp mortar_and_pestle.last_recipe

#remove duplicates, increase count
function spiced:mortar_and_pestle/repeat/compress/main

execute store result score $compress_item_count spiced.dummy run data get storage spiced:temp mortar_and_pestle.compress

#ensure items exist
function spiced:mortar_and_pestle/repeat/check/main

execute if score $items_found spiced.dummy matches 0 run return fail

#all items found, GET EM OUTTA HERE
function spiced:mortar_and_pestle/repeat/remove/main

#start inserting items
execute unless score $bowl_item_count spiced.dummy matches 1.. run return fail
data modify storage spiced:temp mortar_and_pestle.input set from storage spiced:temp mortar_and_pestle.last_recipe[0]
function spiced:mortar_and_pestle/repeat/insert

execute unless score $bowl_item_count spiced.dummy matches 2.. run return run function spiced:mortar_and_pestle/mash/main
data modify storage spiced:temp mortar_and_pestle.input set from storage spiced:temp mortar_and_pestle.last_recipe[1]
function spiced:mortar_and_pestle/repeat/insert

execute unless score $bowl_item_count spiced.dummy matches 3.. run return run function spiced:mortar_and_pestle/mash/main
data modify storage spiced:temp mortar_and_pestle.input set from storage spiced:temp mortar_and_pestle.last_recipe[2]
function spiced:mortar_and_pestle/repeat/insert

execute unless score $bowl_item_count spiced.dummy matches 4.. run return run function spiced:mortar_and_pestle/mash/main
data modify storage spiced:temp mortar_and_pestle.input set from storage spiced:temp mortar_and_pestle.last_recipe[3]
function spiced:mortar_and_pestle/repeat/insert

execute unless score $bowl_item_count spiced.dummy matches 5.. run return run function spiced:mortar_and_pestle/mash/main
data modify storage spiced:temp mortar_and_pestle.input set from storage spiced:temp mortar_and_pestle.last_recipe[4]
function spiced:mortar_and_pestle/repeat/insert

function spiced:mortar_and_pestle/mash/main