#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$data modify storage spiced:temp register.temp_font set value "$(font)"
$execute if data storage spiced:temp key_map.$(key) run data modify storage spiced:temp register.temp_font set from storage spiced:temp key_map.$(key)
$data modify storage spiced:temp key_map.$(key) set from storage spiced:temp register.temp_font