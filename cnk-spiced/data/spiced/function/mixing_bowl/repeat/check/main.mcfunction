#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players set $items_found spiced.dummy 1

execute unless score $compress_item_count spiced.dummy matches 1.. run return fail
data modify storage spiced:temp mixing_bowl.find_item.id set from storage spiced:temp mixing_bowl.compress[0].id
execute store result score $count spiced.dummy run data get storage spiced:temp mixing_bowl.compress[0].count
data remove storage spiced:temp mixing_bowl.find_item.custom_data
data modify storage spiced:temp mixing_bowl.find_item.custom_data set from storage spiced:temp mixing_bowl.compress[0].components."minecraft:custom_data"
execute unless data storage spiced:temp mixing_bowl.find_item.custom_data run function spiced:mixing_bowl/repeat/check/macro_no_component with storage spiced:temp mixing_bowl.find_item
execute if data storage spiced:temp mixing_bowl.find_item.custom_data run function spiced:mixing_bowl/repeat/check/macro_component with storage spiced:temp mixing_bowl.find_item
execute if score $items_found spiced.dummy matches 0 run return fail

execute unless score $compress_item_count spiced.dummy matches 2.. run return fail
data modify storage spiced:temp mixing_bowl.find_item.id set from storage spiced:temp mixing_bowl.compress[1].id
execute store result score $count spiced.dummy run data get storage spiced:temp mixing_bowl.compress[1].count
data remove storage spiced:temp mixing_bowl.find_item.custom_data
data modify storage spiced:temp mixing_bowl.find_item.custom_data set from storage spiced:temp mixing_bowl.compress[1].components."minecraft:custom_data"
execute unless data storage spiced:temp mixing_bowl.find_item.custom_data run function spiced:mixing_bowl/repeat/check/macro_no_component with storage spiced:temp mixing_bowl.find_item
execute if data storage spiced:temp mixing_bowl.find_item.custom_data run function spiced:mixing_bowl/repeat/check/macro_component with storage spiced:temp mixing_bowl.find_item
execute if score $items_found spiced.dummy matches 0 run return fail

execute unless score $compress_item_count spiced.dummy matches 3.. run return fail
data modify storage spiced:temp mixing_bowl.find_item.id set from storage spiced:temp mixing_bowl.compress[2].id
execute store result score $count spiced.dummy run data get storage spiced:temp mixing_bowl.compress[2].count
data remove storage spiced:temp mixing_bowl.find_item.custom_data
data modify storage spiced:temp mixing_bowl.find_item.custom_data set from storage spiced:temp mixing_bowl.compress[2].components."minecraft:custom_data"
execute unless data storage spiced:temp mixing_bowl.find_item.custom_data run function spiced:mixing_bowl/repeat/check/macro_no_component with storage spiced:temp mixing_bowl.find_item
execute if data storage spiced:temp mixing_bowl.find_item.custom_data run function spiced:mixing_bowl/repeat/check/macro_component with storage spiced:temp mixing_bowl.find_item
execute if score $items_found spiced.dummy matches 0 run return fail

execute unless score $compress_item_count spiced.dummy matches 4.. run return fail
data modify storage spiced:temp mixing_bowl.find_item.id set from storage spiced:temp mixing_bowl.compress[3].id
execute store result score $count spiced.dummy run data get storage spiced:temp mixing_bowl.compress[3].count
data remove storage spiced:temp mixing_bowl.find_item.custom_data
data modify storage spiced:temp mixing_bowl.find_item.custom_data set from storage spiced:temp mixing_bowl.compress[3].components."minecraft:custom_data"
execute unless data storage spiced:temp mixing_bowl.find_item.custom_data run function spiced:mixing_bowl/repeat/check/macro_no_component with storage spiced:temp mixing_bowl.find_item
execute if data storage spiced:temp mixing_bowl.find_item.custom_data run function spiced:mixing_bowl/repeat/check/macro_component with storage spiced:temp mixing_bowl.find_item
execute if score $items_found spiced.dummy matches 0 run return fail