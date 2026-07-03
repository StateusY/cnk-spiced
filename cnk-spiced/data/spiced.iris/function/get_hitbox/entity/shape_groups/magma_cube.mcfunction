scoreboard players set $entity_width spiced.iris 510000
scoreboard players set $entity_height spiced.iris 510000
execute store result score $slime_size spiced.iris run data get entity @s Size
scoreboard players add $slime_size spiced.iris 1
scoreboard players operation $entity_width spiced.iris *= $slime_size spiced.iris
scoreboard players operation $entity_height spiced.iris *= $slime_size spiced.iris
