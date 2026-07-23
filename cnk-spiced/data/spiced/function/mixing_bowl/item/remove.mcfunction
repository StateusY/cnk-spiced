#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

playsound minecraft:block.bamboo_wood.step block @a[tag=summit.in_booth.spiced,distance=..7] ~ ~ ~ 1 2
execute as @p[tag=spiced.interact_mixing_bowl,distance=..20,limit=1] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1
execute if data entity @s item.components run function spiced:mixing_bowl/item/item_macro_components with entity @s item
execute unless data entity @s item.components run function spiced:mixing_bowl/item/item_macro with entity @s item
kill @s