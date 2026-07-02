execute store result score $random_sfx spiced.dummy run random value 1..5
execute if score $random_sfx spiced.dummy matches 1 run playsound minecraft:entity.cat.ambient neutral @s ~ ~ ~ 1 1.1
execute if score $random_sfx spiced.dummy matches 2 run playsound minecraft:entity.cat.stray_ambient neutral @s ~ ~ ~ 1 1.1
execute if score $random_sfx spiced.dummy matches 3 run playsound minecraft:entity.cat.purreow neutral @s ~ ~ ~ 1 1.1
execute if score $random_sfx spiced.dummy matches 4 run playsound minecraft:entity.cat_royal.ambient neutral @s ~ ~ ~ 1 1.1
execute if score $random_sfx spiced.dummy matches 5 run playsound minecraft:entity.cat_royal.purreow neutral @s ~ ~ ~ 1 1.1
execute if score $random_sfx spiced.dummy matches 1 run playsound minecraft:entity.wither_skeleton.hurt ambient @a ~ ~ ~ 0.15 2
execute if score $random_sfx spiced.dummy matches 2..3 run playsound minecraft:entity.wither_skeleton.hurt neutral @s ~ ~ ~ 0.15 1.75
execute if score $random_sfx spiced.dummy matches 4..5 run playsound minecraft:entity.wither_skeleton.hurt neutral @s ~ ~ ~ 0.15 1.5
execute if score $random_sfx spiced.dummy matches 1 run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 0.5 1
execute if score $random_sfx spiced.dummy matches 2..3 run playsound minecraft:block.note_block.bit neutral @s ~ ~ ~ 0.5 1.25
execute if score $random_sfx spiced.dummy matches 4..5 run playsound minecraft:block.note_block.bit neutral @s ~ ~ ~ 0.5 1.5
execute if score $random_sfx spiced.dummy matches 1 run playsound minecraft:item.lodestone_compass.lock ambient @a ~ ~ ~ 1 0.75
execute if score $random_sfx spiced.dummy matches 2..3 run playsound minecraft:item.lodestone_compass.lock neutral @s ~ ~ ~ 1 1.25
execute if score $random_sfx spiced.dummy matches 4..5 run playsound minecraft:item.lodestone_compass.lock neutral @s ~ ~ ~ 1 1
