execute if entity @s[tag=spiced.on_incomplete_page] run scoreboard players operation @s spiced.previous_incomplete_recipe = @s spiced.cookbook_current_page

scoreboard players reset @s spiced.cookbook_previous_page

scoreboard players add @s spiced.cookbook_current_page 1
function spiced:cookbook/open