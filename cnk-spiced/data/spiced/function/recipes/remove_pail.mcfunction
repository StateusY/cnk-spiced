$execute store result score $pail_quantity spiced.dummy run data get storage spiced:temp cooking_pot.Items[{Slot:$(slot)b}].components."minecraft:custom_data".spiced.pail.quantity
scoreboard players remove $pail_quantity spiced.dummy 1

execute if score $pail_quantity spiced.dummy matches 0 run function spiced:recipes/remove with storage spiced:temp cooking_pot
execute if score $pail_quantity spiced.dummy matches 0 run return run loot spawn ~ ~0.25 ~ loot spiced:tools/pail

execute store result storage spiced:temp cooking_pot.pail_quantity int 1 run scoreboard players get $pail_quantity spiced.dummy
function spiced:recipes/pail_macro with storage spiced:temp cooking_pot