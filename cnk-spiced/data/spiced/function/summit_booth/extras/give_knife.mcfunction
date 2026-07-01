execute store result score $random_knife spiced.dummy run random value 1..3
# tellraw @a {"score":{"name":"$random_knife","objective":"spiced.dummy"}}

execute if score $random_knife spiced.dummy matches 1 run loot give @s loot spiced:other/plastic_knife
execute if score $random_knife spiced.dummy matches 2 run loot give @s loot spiced:other/grimwart_knife
execute if score $random_knife spiced.dummy matches 3 run loot give @s loot spiced:other/butcher_knife