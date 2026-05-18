data modify storage spiced:temp mortar_and_pestle.temp_item set from entity @s item

# fathoms compat
execute if data storage spiced:temp mortar_and_pestle.temp_item.components."minecraft:custom_data"{fathoms:{id:"cod"}} run data modify storage spiced:temp mortar_and_pestle.temp_item.id set value "minecraft:cod"
execute if data storage spiced:temp mortar_and_pestle.temp_item.components."minecraft:custom_data"{fathoms:{id:"cod"}} run data remove storage spiced:temp mortar_and_pestle.temp_item.components."minecraft:custom_data"
execute if data storage spiced:temp mortar_and_pestle.temp_item.components."minecraft:custom_data"{fathoms:{id:"salmon"}} run data modify storage spiced:temp mortar_and_pestle.temp_item.id set value "minecraft:salmon"
execute if data storage spiced:temp mortar_and_pestle.temp_item.components."minecraft:custom_data"{fathoms:{id:"salmon"}} run data remove storage spiced:temp mortar_and_pestle.temp_item.components."minecraft:custom_data"

execute if data storage spiced:temp mortar_and_pestle.temp_item.components."minecraft:custom_data" run data remove storage spiced:temp mortar_and_pestle.temp_item.id
data modify storage spiced:temp mortar_and_pestle.Items append from storage spiced:temp mortar_and_pestle.temp_item