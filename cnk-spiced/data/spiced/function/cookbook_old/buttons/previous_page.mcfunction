#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if entity @s[tag=spiced.on_incomplete_page] run scoreboard players operation @s spiced.next_incomplete_recipe = @s spiced.cookbook_current_page

scoreboard players reset @s spiced.cookbook_previous_page

scoreboard players remove @s spiced.cookbook_current_page 1
function spiced:cookbook/open