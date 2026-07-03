data modify storage spiced:temp mixing_bowl.loot_table set value "spiced:food/cinna_shake"
data modify storage spiced:temp mixing_bowl.uuid set from entity @s data.spiced.last_interact_uuid
function spiced:cooking_pot/recipes/give_result with storage spiced:temp mixing_bowl

function spiced:mixing_bowl/mix/clean_up