data modify storage spiced:temp mortar_and_pestle.loot_table set value "spiced:food/chunk_of_lettuce"
data modify storage spiced:temp mortar_and_pestle.uuid set from entity @s data.spiced.last_interact_uuid
function spiced:cooking_pot/recipes/give_result with storage spiced:temp mortar_and_pestle


function spiced:mortar_and_pestle/mash/clean_up