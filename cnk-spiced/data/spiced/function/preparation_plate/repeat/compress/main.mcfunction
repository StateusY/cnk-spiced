data remove storage cnk:temp preparation_plate.compress

execute unless score $bowl_item_count cnk.dummy matches 1.. run return fail
data modify storage cnk:temp preparation_plate.compress_index set value 0
data modify storage cnk:temp preparation_plate.compress_item set from storage cnk:temp preparation_plate.last_recipe[0]
function spiced:preparation_plate/repeat/compress/macro with storage cnk:temp preparation_plate

execute unless score $bowl_item_count cnk.dummy matches 2.. run return fail
data modify storage cnk:temp preparation_plate.compress_index set value 1
data modify storage cnk:temp preparation_plate.compress_item set from storage cnk:temp preparation_plate.last_recipe[1]
function spiced:preparation_plate/repeat/compress/macro with storage cnk:temp preparation_plate

execute unless score $bowl_item_count cnk.dummy matches 3.. run return fail
data modify storage cnk:temp preparation_plate.compress_index set value 2
data modify storage cnk:temp preparation_plate.compress_item set from storage cnk:temp preparation_plate.last_recipe[2]
function spiced:preparation_plate/repeat/compress/macro with storage cnk:temp preparation_plate

execute unless score $bowl_item_count cnk.dummy matches 4.. run return fail
data modify storage cnk:temp preparation_plate.compress_index set value 3
data modify storage cnk:temp preparation_plate.compress_item set from storage cnk:temp preparation_plate.last_recipe[3]
function spiced:preparation_plate/repeat/compress/macro with storage cnk:temp preparation_plate