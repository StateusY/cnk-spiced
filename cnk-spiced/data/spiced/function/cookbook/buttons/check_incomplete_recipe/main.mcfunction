#check if we were on a incomplete page, if so then we have to recalculate
execute if entity @s[tag=spiced.on_incomplete_page] run return run function spiced:cookbook/buttons/check_incomplete_recipe/reset

#this is complicated so:
#check if we've moved backwards or forwards, then check if there was an incomplete page in that direction
#if there was, check if we've moved beyond it
#if we have, then force recalculate both directions
execute if score $next_page spiced.dummy < @s spiced.cookbook_current_page unless score @s spiced.previous_incomplete_recipe matches -1 if score $next_page spiced.dummy < @s spiced.previous_incomplete_recipe run return run function spiced:cookbook/buttons/check_incomplete_recipe/reset
execute if score $next_page spiced.dummy > @s spiced.cookbook_current_page unless score @s spiced.next_incomplete_recipe matches -1 if score $next_page spiced.dummy > @s spiced.next_incomplete_recipe run return run function spiced:cookbook/buttons/check_incomplete_recipe/reset