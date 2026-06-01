data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove with storage spiced:temp cooking_pot
function spiced:recipes/remove_generic/meat
loot spawn ~ ~0.25 ~ loot spiced:other/glass_bottle
loot spawn ~ ~0.25 ~ loot spiced:food/stock
function spiced:cooking_pot/effects/finish_cooking
