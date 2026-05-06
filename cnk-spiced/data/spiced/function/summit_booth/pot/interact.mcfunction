advancement revoke @s only spiced:pot/interact

data modify storage iris:settings Whitelist set value "minecraft:decorated_pot"

execute as @s at @s anchored eyes positioned ^ ^ ^ run function iris:get_target
execute if data storage iris:output {TargetType: "BLOCK"} at @e[type=minecraft:marker, tag=iris.targeted_block] as @n[type=minecraft:marker, tag=spiced_booth.pot_setup, sort=nearest, distance=..1] run function spiced:summit_booth/pot/spawn_item with entity @s data
execute if data storage iris:output {TargetType: "BLOCK"} at @e[type=minecraft:marker, tag=iris.targeted_block] as @n[type=minecraft:marker, tag=spiced_booth.pot_setup, sort=nearest, distance=..1] run playsound minecraft:block.note_block.bell block