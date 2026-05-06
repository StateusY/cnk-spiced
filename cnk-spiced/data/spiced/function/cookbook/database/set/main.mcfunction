#add dummy score (inventory change triggering before load function)
scoreboard objectives add spiced.dummy dummy

#reset set success
scoreboard players reset $set_success spiced.dummy

data remove storage spiced:temp database

$data modify storage spiced:temp database.flag set value $(flag)

execute store result storage spiced:temp database.uid int 1 run scoreboard players get @s spiced.uid

#entity has no uid score yet, fail set
execute if data storage spiced:temp database{uid:0} run return fail

function spiced:cookbook/database/set/macro with storage spiced:temp database

#reset previous/next incomplete recipe scores to force recalculate
scoreboard players reset @s spiced.previous_incomplete_recipe
scoreboard players reset @s spiced.next_incomplete_recipe