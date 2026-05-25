data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{disc:{type:"scarecrow"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

loot spawn ~ ~0.25 ~ loot spiced:zzz_secret/music_disc_trick

function spiced:cooking_pot/effects/finish_cooking