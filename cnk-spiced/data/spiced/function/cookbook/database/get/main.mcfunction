data remove storage spiced:temp database
execute store result storage spiced:temp database.uid int 1 run scoreboard players get @s spiced.uid
return run function spiced:cookbook/database/get/macro with storage spiced:temp database