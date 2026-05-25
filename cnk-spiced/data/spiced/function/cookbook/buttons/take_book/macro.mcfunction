#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book run return run function spiced:cookbook/buttons/take_book/replace
scoreboard players set $take_success spiced.dummy 0