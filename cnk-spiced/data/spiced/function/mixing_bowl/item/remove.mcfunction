#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2
execute if data entity @s item.components run function spiced:mixing_bowl/item/item_macro_components with entity @s item
execute unless data entity @s item.components run function spiced:mixing_bowl/item/item_macro with entity @s item
kill @s