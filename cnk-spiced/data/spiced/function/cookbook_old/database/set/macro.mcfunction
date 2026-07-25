#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$data modify storage spiced:cookbook database.$(uid)."$(flag)" set value true

#validate that data was set
$execute if data storage spiced:cookbook database.$(uid)."$(flag)" run return run scoreboard players set $set_success spiced.dummy 1