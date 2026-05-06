execute unless score @s spiced.cookbook_previous_page matches 1.. run scoreboard players operation @s spiced.cookbook_previous_page = @s spiced.cookbook_current_page

execute store result storage spiced:temp cookbook.current_page int 1 run scoreboard players get @s spiced.cookbook_current_page
function spiced:cookbook/get_page_data with storage spiced:temp cookbook

data modify storage spiced:temp cookbook.reference set from storage spiced:temp cookbook.current_page_data.ingredients[1].key

data remove storage spiced:temp cookbook.reference_page
function spiced:cookbook/lookup_page with storage spiced:temp cookbook
execute unless data storage spiced:temp cookbook.reference_page run return fail

execute store result score $next_page spiced.dummy run data get storage spiced:temp cookbook.reference_page
function spiced:cookbook/buttons/check_incomplete_recipe/main

scoreboard players operation @s spiced.cookbook_current_page = $next_page spiced.dummy
function spiced:cookbook/open