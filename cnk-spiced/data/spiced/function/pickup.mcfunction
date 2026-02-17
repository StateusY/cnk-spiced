execute at @e[type=experience_orb,tag=pickup_base] as @a[distance=..5] run tag @s add pickup_healing
execute as @a[tag=pickup_healing] run effect give @s instant_health 1 0 true
execute as @a[tag=pickup_healing] at @s run kill @e[tag=pickup_part, sort=nearest,limit=2]
execute as @a[tag=pickup_healing] run tag @s remove pickup_healing