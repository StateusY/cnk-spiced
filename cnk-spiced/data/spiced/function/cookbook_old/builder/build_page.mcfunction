#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if score $ingredient_count spiced.dummy matches 1 run function spiced:cookbook/builder/1/main
execute if score $ingredient_count spiced.dummy matches 2 run function spiced:cookbook/builder/2/main
execute if score $ingredient_count spiced.dummy matches 3 run function spiced:cookbook/builder/3/main
execute if score $ingredient_count spiced.dummy matches 4 run function spiced:cookbook/builder/4/main
execute if score $ingredient_count spiced.dummy matches 5 run function spiced:cookbook/builder/5/main

function spiced:cookbook/builder/template with storage spiced:temp cookbook.data