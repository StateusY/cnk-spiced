data modify storage spiced.iris:data EntityTag set from entity @s
execute if data storage spiced.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width spiced.iris 250000
execute if data storage spiced.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height spiced.iris 987500
execute unless data storage spiced.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width spiced.iris 500000
execute unless data storage spiced.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height spiced.iris 1975000
execute if data storage spiced.iris:data EntityTag{Marker: 1b} store result score $entity_width spiced.iris run scoreboard players set $entity_height spiced.iris 0