data modify storage spiced:temp mortar_and_pestle.loot_table set value "spiced:food/reasonable_amount_of_lettuce"
data modify storage spiced:temp mortar_and_pestle.uuid set from entity @s data.spiced.last_interact_uuid
function spiced:cooking_pot/recipes/give_result with storage spiced:temp mortar_and_pestle

playsound minecraft:block.beacon.activate player @a[tag=summit.in_booth.spiced,distance=..20] ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_block.break player @a[tag=summit.in_booth.spiced,distance=..20] ~ ~ ~ 1 1.5

function spiced:mortar_and_pestle/mash/clean_up