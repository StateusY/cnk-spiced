execute store result score @s cnk.rotation run data get entity @s Rotation[0]
scoreboard players add @s cnk.rotation 180

scoreboard players add @s cnk.rotation 36

scoreboard players set $360 cnk.dummy 360
scoreboard players operation @s cnk.rotation %= $360 cnk.dummy

scoreboard players remove @s cnk.rotation 180

execute store result entity @s Rotation[0] int 1 run scoreboard players get @s cnk.rotation

data modify storage cnk:temp mortar_and_pestle.id set from entity @s item.id
data remove storage cnk:temp mortar_and_pestle.components
data modify storage cnk:temp mortar_and_pestle.components set from entity @s item.components

execute if data storage cnk:temp mortar_and_pestle.components run return run function spiced:mortar_and_pestle/mash/particle_components with storage cnk:temp mortar_and_pestle
function spiced:mortar_and_pestle/mash/particle with storage cnk:temp mortar_and_pestle