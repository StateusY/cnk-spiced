function cnk:recipes/remove_generic/disc

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"reasonable_amount_of_lettuce"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

loot spawn ~ ~0.25 ~ loot spiced:other/music_disc_green_regime

function cnk:cooking_pot/effects/finish_cooking