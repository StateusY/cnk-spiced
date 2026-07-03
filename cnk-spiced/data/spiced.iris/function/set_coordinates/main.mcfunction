#> spiced.iris:set_coordinates
#
# Teleports the executing entity at a given position from six scores.
# Meant to be executed as the ray marker after raycasting, scores are then set to the player's targeted position:
#    execute as @p at @s anchored eyes positioned ^ ^ ^ run function spiced.iris:get_target
#    execute as @e[type=minecraft:marker, tag=spiced.iris.ray] run function spiced.iris:set_coordinates
#
# @public
# @context any entity
# @input
#   score $[x] spiced.iris
#       The integer value of the new X position
#   score ${x} spiced.iris
#       The fractional value of the new X position, as a number between 0 and 1000000

execute unless entity @s run return fail

# Clamp to 0..999999
execute if score ${x} spiced.iris matches ..0 run scoreboard players set ${x} spiced.iris 0
execute if score ${y} spiced.iris matches ..0 run scoreboard players set ${y} spiced.iris 0
execute if score ${z} spiced.iris matches ..0 run scoreboard players set ${z} spiced.iris 0
execute if score ${x} spiced.iris matches 1000000.. run scoreboard players set ${x} spiced.iris 999999
execute if score ${y} spiced.iris matches 1000000.. run scoreboard players set ${y} spiced.iris 999999
execute if score ${z} spiced.iris matches 1000000.. run scoreboard players set ${z} spiced.iris 999999

# Get integer coordinates for the first teleport command (absolute coordinates)
execute store result storage spiced.iris:args x int 1 run scoreboard players get $[x] spiced.iris
execute store result storage spiced.iris:args y int 1 run scoreboard players get $[y] spiced.iris
execute store result storage spiced.iris:args z int 1 run scoreboard players get $[z] spiced.iris

# Get fractional coordinates for the second teleport command (relative coordinates)
execute store result storage spiced.iris:args value int 1 run scoreboard players get ${x} spiced.iris
function spiced.iris:set_coordinates/pad_with_zeros with storage spiced.iris:args
data modify storage spiced.iris:args dx set string storage spiced.iris:data String -6

execute store result storage spiced.iris:args value int 1 run scoreboard players get ${y} spiced.iris
function spiced.iris:set_coordinates/pad_with_zeros with storage spiced.iris:args
data modify storage spiced.iris:args dy set string storage spiced.iris:data String -6

execute store result storage spiced.iris:args value int 1 run scoreboard players get ${z} spiced.iris
function spiced.iris:set_coordinates/pad_with_zeros with storage spiced.iris:args
data modify storage spiced.iris:args dz set string storage spiced.iris:data String -6

# Generate the two teleport commands
function spiced.iris:set_coordinates/teleport with storage spiced.iris:args
