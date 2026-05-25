#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute store result score @s spiced.rotation run data get entity @s Rotation[0]
scoreboard players add @s spiced.rotation 180

scoreboard players add @s spiced.rotation 36

scoreboard players set $360 spiced.dummy 360
scoreboard players operation @s spiced.rotation %= $360 spiced.dummy

scoreboard players remove @s spiced.rotation 180

execute store result entity @s Rotation[0] int 1 run scoreboard players get @s spiced.rotation

data modify storage spiced:temp mixing_bowl.id set from entity @s item.id
data remove storage spiced:temp mixing_bowl.components
data modify storage spiced:temp mixing_bowl.components set from entity @s item.components

execute if data storage spiced:temp mixing_bowl.components run return run function spiced:mixing_bowl/mix/particle_components with storage spiced:temp mixing_bowl
function spiced:mixing_bowl/mix/particle with storage spiced:temp mixing_bowl