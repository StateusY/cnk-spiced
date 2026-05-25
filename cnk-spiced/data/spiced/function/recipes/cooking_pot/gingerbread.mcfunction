data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"dough"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"ginger"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cinnamon"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

function spiced:recipes/remove_generic/milk

execute store result score $cookie_type spiced.dummy run random value 1..6
execute if score $cookie_type spiced.dummy matches 1 run loot spawn ~ ~0.25 ~ loot spiced:food/gingerbread/normal
execute if score $cookie_type spiced.dummy matches 2 run loot spawn ~ ~0.25 ~ loot spiced:food/gingerbread/blush
execute if score $cookie_type spiced.dummy matches 3 run loot spawn ~ ~0.25 ~ loot spiced:food/gingerbread/hat
execute if score $cookie_type spiced.dummy matches 4 run loot spawn ~ ~0.25 ~ loot spiced:food/gingerbread/pants
execute if score $cookie_type spiced.dummy matches 5 run loot spawn ~ ~0.25 ~ loot spiced:food/gingerbread/psy
execute if score $cookie_type spiced.dummy matches 6 run loot spawn ~ ~0.25 ~ loot spiced:food/gingerbread/scarf

function spiced:cooking_pot/effects/finish_cooking