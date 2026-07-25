#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

data remove storage spiced:temp database
execute store result storage spiced:temp database.uid int 1 run scoreboard players get @s spiced.uid
return run function spiced:cookbook/database/reset/macro with storage spiced:temp database