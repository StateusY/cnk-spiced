#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

data modify storage spiced:temp cooking_pot.kick set from storage spiced:temp cooking_pot.Items[4]
data remove block ~ ~ ~ Items[4]

function spiced:cooking_pot/kick/sanitise
function spiced:cooking_pot/kick/give_item with storage spiced:temp cooking_pot.kick