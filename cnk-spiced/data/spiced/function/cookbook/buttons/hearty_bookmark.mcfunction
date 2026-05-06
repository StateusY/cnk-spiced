scoreboard players reset @s spiced.cookbook_previous_page

execute at @s run playsound cnk:item.cookbook.section_flip neutral @s ~ ~ ~ 1 1

scoreboard players operation $next_page spiced.dummy = $hearty_page spiced.dummy
function spiced:cookbook/buttons/check_incomplete_recipe/main

scoreboard players operation @s spiced.cookbook_current_page = $hearty_page spiced.dummy
function spiced:cookbook/open