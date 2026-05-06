scoreboard players set @s spiced.use_book 0
tag @s remove spiced.via_lectern

execute if entity @s[predicate=spiced:cookbook] run return run function spiced:cookbook/open