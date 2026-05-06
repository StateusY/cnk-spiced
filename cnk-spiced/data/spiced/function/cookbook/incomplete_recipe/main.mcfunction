#this page is incomplete reset scores
execute if entity @s[tag=spiced.on_incomplete_page] run function spiced:cookbook/buttons/check_incomplete_recipe/reset

#scores have been reset elsewhere, or were never set, recalculate
execute unless score @s spiced.previous_incomplete_recipe matches -2.. run function spiced:cookbook/incomplete_recipe/calculate_previous/main
execute unless score @s spiced.next_incomplete_recipe matches -2.. run function spiced:cookbook/incomplete_recipe/calculate_next/main