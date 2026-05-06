scoreboard players add $incomplete_page spiced.dummy 1

#at the end of the book, stop and set score to -1
execute if score $incomplete_page spiced.dummy >= $global_cookbook_page spiced.dummy run return run scoreboard players set @s spiced.next_incomplete_recipe -1

#get page flag
execute store result storage spiced:temp incomplete.page_number int 1 run scoreboard players get $incomplete_page spiced.dummy
function spiced:cookbook/incomplete_recipe/get_page with storage spiced:temp incomplete

#if not recipe page, skip
execute unless data storage spiced:temp incomplete.page.ingredients run return run function spiced:cookbook/incomplete_recipe/calculate_next/loop

#static title, skip
execute if data storage spiced:temp incomplete.page.static_title run return run function spiced:cookbook/incomplete_recipe/calculate_next/loop

#check flag
execute store result score $incomplete_check spiced.dummy run function spiced:cookbook/incomplete_recipe/check_flag with storage spiced:temp incomplete.page

#missing from database, set as next incomplete recipe
execute if score $incomplete_check spiced.dummy matches 0 run return run scoreboard players operation @s spiced.next_incomplete_recipe = $incomplete_page spiced.dummy

#found in database, loop
function spiced:cookbook/incomplete_recipe/calculate_next/loop