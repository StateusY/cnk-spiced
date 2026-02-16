execute on passengers if entity @s run return fail

summon minecraft:marker ~ ~ ~ {Tags:["spiced.flaming_cocktail_marker","cnk.projectile","cnk.entity"]}
ride @n[type=minecraft:marker,tag=spiced.flaming_cocktail_marker,distance=..0.1] mount @s

execute store result score @n[type=minecraft:marker,tag=spiced.flaming_cocktail_marker,distance=..0.1] cnk.wine_time run data get entity @s Item.components."minecraft:custom_data".cnk.wine.time

execute as @p[tag=spiced.flaming_cocktail_throw,distance=..20] at @s rotated as @s run playsound minecraft:entity.tnt.primed neutral @a ^ ^ ^5 1 1