#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$execute as $(uuid) at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1
$execute as $(uuid) run loot give @s loot {pools:[{rolls:1,entries:[{type:"item",name:"$(id)",functions:[{function:"minecraft:set_components",components:$(components)},{function:"minecraft:set_count",count:$(count)}]}]}]}