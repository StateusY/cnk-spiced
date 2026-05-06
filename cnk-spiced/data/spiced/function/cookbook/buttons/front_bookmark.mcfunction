scoreboard players reset @s spiced.cookbook_previous_page

execute at @s run playsound cnk:item.cookbook.section_flip neutral @s ~ ~ ~ 1 1

scoreboard players set $next_page spiced.dummy 1
function spiced:cookbook/buttons/check_incomplete_recipe/main

scoreboard players set @s spiced.cookbook_current_page 1
function spiced:cookbook/open