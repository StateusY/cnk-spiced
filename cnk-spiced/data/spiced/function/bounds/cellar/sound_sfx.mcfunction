execute store result score $random_sound spiced.dummy run random value 1..4

execute if score $random_sound spiced.dummy matches 1 run playsound minecraft:block.respawn_anchor.ambient block @s ~ ~ ~ 1 0.5
execute if score $random_sound spiced.dummy matches 2 run playsound minecraft:block.beacon.power_select block @s ~ ~ ~ 0.5 0.5
execute if score $random_sound spiced.dummy matches 3 run playsound minecraft:ambient.cave block @s ~ ~ ~ 0.5 0.5
execute if score $random_sound spiced.dummy matches 4 run playsound minecraft:ambient.nether_wastes.mood block @s ~ ~ ~ 0.5 0.5


execute store result storage spiced:temp random.cellar_sound int 1 run random value 20..35

function spiced:bounds/cellar/sound_schedule with storage spiced:temp random