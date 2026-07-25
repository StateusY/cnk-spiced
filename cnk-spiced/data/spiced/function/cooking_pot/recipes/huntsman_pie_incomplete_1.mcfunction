data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'stock'}}}}}].Slot
function spiced:cooking_pot/recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'cooking_oil'}}}}}].Slot
function spiced:cooking_pot/recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'diced_celery'}}}}}].Slot
function spiced:cooking_pot/recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'diced_onion'}}}}}].Slot
function spiced:cooking_pot/recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{'minecraft:custom_data':{spiced:{ingredient:{type:'ground_cinnamon'}}}}}].Slot
function spiced:cooking_pot/recipes/remove with storage spiced:temp cooking_pot


data modify storage spiced:temp cooking_pot.loot_table set value "spiced:other/glass_bottle"
data modify storage spiced:temp cooking_pot.uuid set from entity @s data.spiced.last_interact_uuid
function spiced:cooking_pot/recipes/give_result with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.loot_table set value "spiced:food/huntsman_pie_incomplete_1"
data modify storage spiced:temp cooking_pot.uuid set from entity @s data.spiced.last_interact_uuid
function spiced:cooking_pot/recipes/give_result with storage spiced:temp cooking_pot

function spiced:cooking_pot/effects/finish_cooking
