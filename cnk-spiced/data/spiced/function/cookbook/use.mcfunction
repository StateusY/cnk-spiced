scoreboard players reset @s spiced.use_book

execute if predicate spiced:cookbook/mainhand run return run function spiced:cookbook/open
execute if predicate spiced:cookbook/offhand unless items entity @s weapon.mainhand minecraft:written_book run return run function spiced:cookbook/open