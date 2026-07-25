data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"dough"}}}}}].Slot
function spiced:cooking_pot/recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.loot_table set value "spiced:food/bread"
data modify storage spiced:temp cooking_pot.uuid set from entity @s data.spiced.last_interact_uuid
function spiced:cooking_pot/recipes/give_result with storage spiced:temp cooking_pot

function spiced:cooking_pot/effects/finish_cooking