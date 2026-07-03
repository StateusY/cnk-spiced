$execute as $(uuid) at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1
$execute as $(uuid) run loot give @s loot $(loot_table)