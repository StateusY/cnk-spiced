#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if score $mix_time spiced.dummy matches 1 run rotate @s ~120 ~
execute if score $mix_time spiced.dummy matches 7 run rotate @s ~120 ~
execute if score $mix_time spiced.dummy matches 13 run rotate @s ~120 ~

data modify storage spiced:temp mixing_bowl.id set from entity @s item.id
data modify storage spiced:temp mixing_bowl.components set value {}
data modify storage spiced:temp mixing_bowl.components set from entity @s item.components
function spiced:mixing_bowl/mix/particle with storage spiced:temp mixing_bowl