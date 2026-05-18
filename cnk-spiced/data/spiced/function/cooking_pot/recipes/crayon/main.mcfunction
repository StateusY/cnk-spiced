function spiced:recipes/remove_generic/dye_color

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:honeycomb"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

function spiced:cooking_pot/recipes/crayon/macro with storage spiced:temp cooking_pot

function spiced:cooking_pot/effects/finish_cooking