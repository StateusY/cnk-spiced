function spiced:recipes/remove_generic/dye_color

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

function spiced:recipes/cooking_pot/candy/macro with storage spiced:temp cooking_pot

function spiced:cooking_pot/effects/finish_cooking