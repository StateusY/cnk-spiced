advancement revoke @s from spiced:cookbook/root
advancement revoke @s from spiced:cookbook/toasts
function spiced:cookbook/database/reset/main

scoreboard players reset @s spiced.previous_incomplete_recipe
scoreboard players reset @s spiced.next_incomplete_recipe