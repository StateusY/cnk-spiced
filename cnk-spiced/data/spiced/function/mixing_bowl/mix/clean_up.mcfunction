#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

data modify entity @s item.components."minecraft:custom_data".spiced set value {}
tag @s add spiced.finished_mixing_bowl
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] run data modify entity @n[tag=spiced.finished_mixing_bowl] item.components."minecraft:custom_data".spiced.last_recipe append from entity @s item
tag @s remove spiced.finished_mixing_bowl

particle minecraft:poof ~ ~-0.3 ~ 0.1 0.1 0.1 0 4
playsound entity.item.pickup block @a[tag=summit.in_booth.spiced] ~ ~ ~ 0.6 1
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] run kill @s
scoreboard players set @s spiced.item_count 0

# execute if data entity @s data.spiced.last_interact_uuid run function spiced:mixing_bowl/post_mix/find with entity @s data.spiced