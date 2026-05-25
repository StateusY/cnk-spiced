#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if score $hit_mixing_bowl_check spiced.dummy matches 1 run return fail

execute on attacker if entity @s[tag=spiced.hit_mixing_bowl] run scoreboard players set $hit_mixing_bowl_check spiced.dummy 1
execute if score $hit_mixing_bowl_check spiced.dummy matches 1 run data remove entity @s attack
execute if score $hit_mixing_bowl_check spiced.dummy matches 1 on vehicle unless entity @s[tag=spiced.mixing] on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] on vehicle run return run function spiced:mixing_bowl/hit/remove_last
execute if score $hit_mixing_bowl_check spiced.dummy matches 1 on vehicle run scoreboard players add @s spiced.hit_count 1
execute if score $hit_mixing_bowl_check spiced.dummy matches 1 on vehicle at @s run playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 1 2
execute if score $hit_mixing_bowl_check spiced.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5