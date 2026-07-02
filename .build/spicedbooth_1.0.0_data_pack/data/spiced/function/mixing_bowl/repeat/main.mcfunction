data modify storage spiced:temp mixing_bowl.last_recipe set from entity @s item.components."minecraft:custom_data".spiced.last_recipe
data modify storage spiced:temp mixing_bowl.last_recipe[].count set value 1
execute store result score $bowl_item_count spiced.dummy run data get storage spiced:temp mixing_bowl.last_recipe
function spiced:mixing_bowl/repeat/compress/main
execute store result score $compress_item_count spiced.dummy run data get storage spiced:temp mixing_bowl.compress
function spiced:mixing_bowl/repeat/check/main
execute if score $items_found spiced.dummy matches 0 run return fail
function spiced:mixing_bowl/repeat/remove/main
execute unless score $bowl_item_count spiced.dummy matches 1.. run return fail
data modify storage spiced:temp mixing_bowl.input set from storage spiced:temp mixing_bowl.last_recipe[0]
function spiced:mixing_bowl/repeat/insert
execute unless score $bowl_item_count spiced.dummy matches 2.. run return run function spiced:mixing_bowl/mix/main
data modify storage spiced:temp mixing_bowl.input set from storage spiced:temp mixing_bowl.last_recipe[1]
function spiced:mixing_bowl/repeat/insert
execute unless score $bowl_item_count spiced.dummy matches 3.. run return run function spiced:mixing_bowl/mix/main
data modify storage spiced:temp mixing_bowl.input set from storage spiced:temp mixing_bowl.last_recipe[2]
function spiced:mixing_bowl/repeat/insert
execute unless score $bowl_item_count spiced.dummy matches 4.. run return run function spiced:mixing_bowl/mix/main
data modify storage spiced:temp mixing_bowl.input set from storage spiced:temp mixing_bowl.last_recipe[3]
function spiced:mixing_bowl/repeat/insert
function spiced:mixing_bowl/mix/main
