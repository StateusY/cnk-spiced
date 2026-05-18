execute store result score @s spiced.rotation run data get entity @s Rotation[0]
scoreboard players add @s spiced.rotation 180

scoreboard players add @s spiced.rotation 36

scoreboard players set $360 spiced.dummy 360
scoreboard players operation @s spiced.rotation %= $360 spiced.dummy

scoreboard players remove @s spiced.rotation 180

execute store result entity @s Rotation[0] int 1 run scoreboard players get @s spiced.rotation

data modify storage spiced:temp meat_grinder.id set from entity @s item.id
data remove storage spiced:temp meat_grinder.components
data modify storage spiced:temp meat_grinder.components set from entity @s item.components

execute if data storage spiced:temp meat_grinder.components run return run function spiced:meat_grinder/grind/particle_components with storage spiced:temp meat_grinder
function spiced:meat_grinder/grind/particle with storage spiced:temp meat_grinder