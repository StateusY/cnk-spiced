scoreboard players set $entity_width spiced.iris 900000
scoreboard players set $entity_height spiced.iris 500000

execute store result score $phantom_size spiced.iris run data get entity @s Size
execute if score $phantom_size spiced.iris matches 0 run return 0
scoreboard players set $phantom_extra_width spiced.iris 135000
scoreboard players operation $phantom_extra_width spiced.iris *= $phantom_size spiced.iris
scoreboard players operation $entity_width spiced.iris += $phantom_extra_width spiced.iris
scoreboard players set $phantom_extra_height spiced.iris 75000
scoreboard players operation $phantom_extra_height spiced.iris *= $phantom_size spiced.iris
scoreboard players operation $entity_height spiced.iris += $phantom_extra_height spiced.iris
