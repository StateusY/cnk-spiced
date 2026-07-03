execute store result score $pufferfish_puffstate spiced.iris run data get entity @s PuffState
execute if score $pufferfish_puffstate spiced.iris matches 0 run scoreboard players set $entity_width spiced.iris 350000
execute if score $pufferfish_puffstate spiced.iris matches 1 run scoreboard players set $entity_width spiced.iris 490000
execute if score $pufferfish_puffstate spiced.iris matches 2 run scoreboard players set $entity_width spiced.iris 700000
scoreboard players operation $entity_height spiced.iris = $entity_width spiced.iris

