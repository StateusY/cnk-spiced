scoreboard players reset @s spiced.previous_incomplete_recipe
scoreboard players reset @s spiced.next_incomplete_recipe

scoreboard players operation @s spiced.cookbook_current_page = @s spiced.cookbook_previous_page
scoreboard players reset @s spiced.cookbook_previous_page

function spiced:cookbook/open