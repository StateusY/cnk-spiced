scoreboard players set $items_found spiced.dummy 1

execute unless score $compress_item_count spiced.dummy matches 1.. run return fail
data modify storage spiced:temp mortar_and_pestle.find_item.id set from storage spiced:temp mortar_and_pestle.compress[0].id
execute store result score $count spiced.dummy run data get storage spiced:temp mortar_and_pestle.compress[0].count
data remove storage spiced:temp mortar_and_pestle.find_item.custom_data
data modify storage spiced:temp mortar_and_pestle.find_item.custom_data set from storage spiced:temp mortar_and_pestle.compress[0].components."minecraft:custom_data"
execute unless data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_no_component with storage spiced:temp mortar_and_pestle.find_item
execute if data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_component with storage spiced:temp mortar_and_pestle.find_item
execute if score $items_found spiced.dummy matches 0 run return fail

execute unless score $compress_item_count spiced.dummy matches 2.. run return fail
data modify storage spiced:temp mortar_and_pestle.find_item.id set from storage spiced:temp mortar_and_pestle.compress[1].id
execute store result score $count spiced.dummy run data get storage spiced:temp mortar_and_pestle.compress[1].count
data remove storage spiced:temp mortar_and_pestle.find_item.custom_data
data modify storage spiced:temp mortar_and_pestle.find_item.custom_data set from storage spiced:temp mortar_and_pestle.compress[1].components."minecraft:custom_data"
execute unless data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_no_component with storage spiced:temp mortar_and_pestle.find_item
execute if data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_component with storage spiced:temp mortar_and_pestle.find_item
execute if score $items_found spiced.dummy matches 0 run return fail

execute unless score $compress_item_count spiced.dummy matches 3.. run return fail
data modify storage spiced:temp mortar_and_pestle.find_item.id set from storage spiced:temp mortar_and_pestle.compress[2].id
execute store result score $count spiced.dummy run data get storage spiced:temp mortar_and_pestle.compress[2].count
data remove storage spiced:temp mortar_and_pestle.find_item.custom_data
data modify storage spiced:temp mortar_and_pestle.find_item.custom_data set from storage spiced:temp mortar_and_pestle.compress[2].components."minecraft:custom_data"
execute unless data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_no_component with storage spiced:temp mortar_and_pestle.find_item
execute if data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_component with storage spiced:temp mortar_and_pestle.find_item
execute if score $items_found spiced.dummy matches 0 run return fail

execute unless score $compress_item_count spiced.dummy matches 4.. run return fail
data modify storage spiced:temp mortar_and_pestle.find_item.id set from storage spiced:temp mortar_and_pestle.compress[3].id
execute store result score $count spiced.dummy run data get storage spiced:temp mortar_and_pestle.compress[3].count
data remove storage spiced:temp mortar_and_pestle.find_item.custom_data
data modify storage spiced:temp mortar_and_pestle.find_item.custom_data set from storage spiced:temp mortar_and_pestle.compress[3].components."minecraft:custom_data"
execute unless data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_no_component with storage spiced:temp mortar_and_pestle.find_item
execute if data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_component with storage spiced:temp mortar_and_pestle.find_item
execute if score $items_found spiced.dummy matches 0 run return fail

execute unless score $compress_item_count spiced.dummy matches 5.. run return fail
data modify storage spiced:temp mortar_and_pestle.find_item.id set from storage spiced:temp mortar_and_pestle.compress[4].id
execute store result score $count spiced.dummy run data get storage spiced:temp mortar_and_pestle.compress[4].count
data remove storage spiced:temp mortar_and_pestle.find_item.custom_data
data modify storage spiced:temp mortar_and_pestle.find_item.custom_data set from storage spiced:temp mortar_and_pestle.compress[4].components."minecraft:custom_data"
execute unless data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_no_component with storage spiced:temp mortar_and_pestle.find_item
execute if data storage spiced:temp mortar_and_pestle.find_item.custom_data run function spiced:mortar_and_pestle/repeat/check/macro_component with storage spiced:temp mortar_and_pestle.find_item
execute if score $items_found spiced.dummy matches 0 run return fail