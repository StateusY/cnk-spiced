execute unless score $compress_item_count spiced.dummy matches 1.. run return fail
data modify storage spiced:temp meat_grinder.remove_item.id set from storage spiced:temp meat_grinder.compress[0].id
data modify storage spiced:temp meat_grinder.remove_item.count set from storage spiced:temp meat_grinder.compress[0].count
data remove storage spiced:temp meat_grinder.remove_item.custom_data
data modify storage spiced:temp meat_grinder.remove_item.custom_data set from storage spiced:temp meat_grinder.compress[0].components."minecraft:custom_data"
execute unless data storage spiced:temp meat_grinder.remove_item.custom_data run function spiced:meat_grinder/repeat/remove/macro_no_component with storage spiced:temp meat_grinder.remove_item
execute if data storage spiced:temp meat_grinder.remove_item.custom_data run function spiced:meat_grinder/repeat/remove/macro_component with storage spiced:temp meat_grinder.remove_item

execute unless score $compress_item_count spiced.dummy matches 2.. run return fail
data modify storage spiced:temp meat_grinder.remove_item.id set from storage spiced:temp meat_grinder.compress[1].id
data modify storage spiced:temp meat_grinder.remove_item.count set from storage spiced:temp meat_grinder.compress[1].count
data remove storage spiced:temp meat_grinder.remove_item.custom_data
data modify storage spiced:temp meat_grinder.remove_item.custom_data set from storage spiced:temp meat_grinder.compress[1].components."minecraft:custom_data"
execute unless data storage spiced:temp meat_grinder.remove_item.custom_data run function spiced:meat_grinder/repeat/remove/macro_no_component with storage spiced:temp meat_grinder.remove_item
execute if data storage spiced:temp meat_grinder.remove_item.custom_data run function spiced:meat_grinder/repeat/remove/macro_component with storage spiced:temp meat_grinder.remove_item

execute unless score $compress_item_count spiced.dummy matches 3.. run return fail
data modify storage spiced:temp meat_grinder.remove_item.id set from storage spiced:temp meat_grinder.compress[2].id
data modify storage spiced:temp meat_grinder.remove_item.count set from storage spiced:temp meat_grinder.compress[2].count
data remove storage spiced:temp meat_grinder.remove_item.custom_data
data modify storage spiced:temp meat_grinder.remove_item.custom_data set from storage spiced:temp meat_grinder.compress[2].components."minecraft:custom_data"
execute unless data storage spiced:temp meat_grinder.remove_item.custom_data run function spiced:meat_grinder/repeat/remove/macro_no_component with storage spiced:temp meat_grinder.remove_item
execute if data storage spiced:temp meat_grinder.remove_item.custom_data run function spiced:meat_grinder/repeat/remove/macro_component with storage spiced:temp meat_grinder.remove_item

execute unless score $compress_item_count spiced.dummy matches 4.. run return fail
data modify storage spiced:temp meat_grinder.remove_item.id set from storage spiced:temp meat_grinder.compress[3].id
data modify storage spiced:temp meat_grinder.remove_item.count set from storage spiced:temp meat_grinder.compress[3].count
data remove storage spiced:temp meat_grinder.remove_item.custom_data
data modify storage spiced:temp meat_grinder.remove_item.custom_data set from storage spiced:temp meat_grinder.compress[3].components."minecraft:custom_data"
execute unless data storage spiced:temp meat_grinder.remove_item.custom_data run function spiced:meat_grinder/repeat/remove/macro_no_component with storage spiced:temp meat_grinder.remove_item
execute if data storage spiced:temp meat_grinder.remove_item.custom_data run function spiced:meat_grinder/repeat/remove/macro_component with storage spiced:temp meat_grinder.remove_item