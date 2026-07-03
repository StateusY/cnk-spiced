#> spiced.iris:get_position/get_coordinates
#
# Gets the coordinates of the executing entity
#
# @context A marker
# @within spiced.iris:get_position/main
# @within spiced.iris:get_hitbox/entity

tag @s add spiced.iris.coordinate_getter

# Get integer coordinates
data modify storage spiced.iris:data Pos set from entity @s Pos
execute store result score $[x] spiced.iris store result storage spiced.iris:args x int -1 run data get storage spiced.iris:data Pos[0]
execute store result score $[y] spiced.iris store result storage spiced.iris:args y int -1 run data get storage spiced.iris:data Pos[1]
execute store result score $[z] spiced.iris store result storage spiced.iris:args z int -1 run data get storage spiced.iris:data Pos[2]

# Get fractional coordinates
function spiced.iris:get_position/teleport with storage spiced.iris:args
data modify storage spiced.iris:data Pos set from entity @s Pos
execute store result score ${x} spiced.iris run data get storage spiced.iris:data Pos[0] 1000000
execute store result score ${y} spiced.iris run data get storage spiced.iris:data Pos[1] 1000000
execute store result score ${z} spiced.iris run data get storage spiced.iris:data Pos[2] 1000000

# Clean up
data remove storage spiced.iris:data Pos
