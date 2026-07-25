#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players add $global spiced.uid 1
scoreboard players operation @s spiced.uid = $global spiced.uid
function spiced:cookbook/database/reset/main