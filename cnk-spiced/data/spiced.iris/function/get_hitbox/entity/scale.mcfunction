#> spiced.iris:get_hitbox/entity/scale
#
# Scales a living entity according to its scale attribute
#
# @within spiced.iris:get_hitbox/entity

execute store result score $attribute_scale spiced.iris run attribute @s minecraft:scale get 1000
execute if score $attribute_scale spiced.iris matches 0 run return fail
execute if score $attribute_scale spiced.iris matches 1000 run return 0

scoreboard players operation $entity_width spiced.iris /= $10 spiced.iris
scoreboard players operation $entity_width spiced.iris *= $attribute_scale spiced.iris
scoreboard players operation $entity_width spiced.iris /= $100 spiced.iris

scoreboard players operation $entity_height spiced.iris /= $10 spiced.iris
scoreboard players operation $entity_height spiced.iris *= $attribute_scale spiced.iris
scoreboard players operation $entity_height spiced.iris /= $100 spiced.iris
