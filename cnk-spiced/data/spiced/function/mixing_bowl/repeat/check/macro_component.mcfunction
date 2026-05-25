#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$execute store result score $item_count spiced.dummy run clear @p[tag=spiced.interact_mixing_bowl,distance=..20] $(id)[minecraft:custom_data=$(custom_data)] 0
execute if score $count spiced.dummy > $item_count spiced.dummy run scoreboard players set $items_found spiced.dummy 0