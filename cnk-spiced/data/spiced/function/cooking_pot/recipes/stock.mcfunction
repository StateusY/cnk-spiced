data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"water_bottle"}}}}}].Slot
function spiced:cooking_pot/recipes/remove with storage spiced:temp cooking_pot

execute if data storage spiced:temp cooking_pot.slot run function spiced:cooking_pot/recipes/remove_generic/meat with storage spiced:temp cooking_pot
function spiced:cooking_pot/recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.loot_table set value "spiced:other/glass_bottle"
data modify storage spiced:temp cooking_pot.uuid set from entity @s data.spiced.last_interact_uuid
function spiced:cooking_pot/recipes/give_result with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.loot_table set value "spiced:food/stock"
data modify storage spiced:temp cooking_pot.uuid set from entity @s data.spiced.last_interact_uuid
function spiced:cooking_pot/recipes/give_result with storage spiced:temp cooking_pot

function spiced:cooking_pot/effects/finish_cooking
