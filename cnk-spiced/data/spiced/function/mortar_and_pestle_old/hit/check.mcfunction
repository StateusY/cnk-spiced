execute if score $hit_mortar_and_pestle_check spiced.dummy matches 1 run return fail

execute on attacker if entity @s[tag=spiced.hit_mortar_and_pestle] run scoreboard players set $hit_mortar_and_pestle_check spiced.dummy 1
execute if score $hit_mortar_and_pestle_check spiced.dummy matches 1 run data remove entity @s attack
execute if score $hit_mortar_and_pestle_check spiced.dummy matches 1 on vehicle unless entity @s[tag=spiced.mashing] on passengers if entity @s[type=minecraft:item_display,tag=spiced.mortar_and_pestle_item] on vehicle run return run function spiced:mortar_and_pestle/hit/remove_last
execute if score $hit_mortar_and_pestle_check spiced.dummy matches 1 on vehicle at @s run playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 1 2