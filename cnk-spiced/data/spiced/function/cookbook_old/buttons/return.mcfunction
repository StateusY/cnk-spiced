#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players reset @s spiced.previous_incomplete_recipe
scoreboard players reset @s spiced.next_incomplete_recipe

scoreboard players operation @s spiced.cookbook_current_page = @s spiced.cookbook_previous_page
scoreboard players reset @s spiced.cookbook_previous_page

function spiced:cookbook/open