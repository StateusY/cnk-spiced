#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

playsound minecraft:block.bamboo_wood.place block @a ~ ~ ~ 1 2
setblock ~ ~ ~ minecraft:air
data modify storage spiced:temp rotation set value 0
execute if score $rotation spiced.dummy matches 1350..1800 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value -90
execute if score $rotation spiced.dummy matches -1800..-1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value -90
execute if score $rotation spiced.dummy matches -1350..-450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 0
execute if score $rotation spiced.dummy matches -450..450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 90
execute if score $rotation spiced.dummy matches 450..1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 180

function spiced:mixing_bowl/macro with storage spiced:temp