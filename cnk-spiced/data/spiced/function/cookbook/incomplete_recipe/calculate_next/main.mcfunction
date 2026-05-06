execute if score @s[tag=!spiced.on_incomplete_page] spiced.previous_incomplete_recipe matches -1 run function spiced:cookbook/incomplete_recipe/calculate_previous/main

data remove storage spiced:temp cookbook.incomplete

scoreboard players operation $incomplete_page spiced.dummy = @s spiced.cookbook_current_page
function spiced:cookbook/incomplete_recipe/calculate_next/loop