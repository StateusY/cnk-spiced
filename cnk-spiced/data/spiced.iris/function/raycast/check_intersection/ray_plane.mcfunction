#> spiced.iris:raycast/check_intersection/ray_plane
#
# Tests for ray-plane intersections with a face
#
# @within spiced.iris:raycast/check_intersection/ray_box
# @reads
#   storage spiced.iris:data Face: compound
#       Direction: string
#           The axis that is perpendicular to this face
#           One of WEST_EAST, UP_DOWN, NORTH_SOUTH
#       min: float[]
#       max: float[]
# @output
#   Success: 1 if the face is hit, 0 otherwise
#   Result: the distance, in mm, before the face is hit

# Save face coordinates
execute store result score $x0 spiced.iris run data get storage spiced.iris:data Face.min[0] 1000000
execute store result score $y0 spiced.iris run data get storage spiced.iris:data Face.min[1] 1000000
execute store result score $z0 spiced.iris run data get storage spiced.iris:data Face.min[2] 1000000
execute store result score $x1 spiced.iris run data get storage spiced.iris:data Face.max[0] 1000000
execute store result score $y1 spiced.iris run data get storage spiced.iris:data Face.max[1] 1000000
execute store result score $z1 spiced.iris run data get storage spiced.iris:data Face.max[2] 1000000

# Get distance (in mm) to the plane, i.e. how long the ray should extend before it hits the plane
# This value should be at most sqrt(3)*1000; if it's more than 2000, we fail (otherwise we risk overflow errors)
execute if data storage spiced.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance spiced.iris = $x0 spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance spiced.iris -= ${x} spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance spiced.iris = $y0 spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance spiced.iris -= ${y} spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance spiced.iris = $z0 spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance spiced.iris -= ${z} spiced.iris
scoreboard players operation $distance spiced.iris *= $1000 spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance spiced.iris /= $dx spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance spiced.iris /= $dy spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance spiced.iris /= $dz spiced.iris
execute if score $distance spiced.iris matches ..-1 run return fail
execute if score $distance spiced.iris matches 2000.. run return fail

# Get x position of the ray/plane intersection
scoreboard players operation $x_intersection spiced.iris = $distance spiced.iris
scoreboard players operation $x_intersection spiced.iris *= $dx spiced.iris
scoreboard players operation $x_intersection spiced.iris /= $1000 spiced.iris
scoreboard players operation $x_intersection spiced.iris += ${x} spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $x_intersection spiced.iris = $x0 spiced.iris

# Get y position of the ray/plane intersection
scoreboard players operation $y_intersection spiced.iris = $distance spiced.iris
scoreboard players operation $y_intersection spiced.iris *= $dy spiced.iris
scoreboard players operation $y_intersection spiced.iris /= $1000 spiced.iris
scoreboard players operation $y_intersection spiced.iris += ${y} spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $y_intersection spiced.iris = $y0 spiced.iris

# Get z position of the ray/plane intersection
scoreboard players operation $z_intersection spiced.iris = $distance spiced.iris
scoreboard players operation $z_intersection spiced.iris *= $dz spiced.iris
scoreboard players operation $z_intersection spiced.iris /= $1000 spiced.iris
scoreboard players operation $z_intersection spiced.iris += ${z} spiced.iris
execute if data storage spiced.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $z_intersection spiced.iris = $z0 spiced.iris

# Save the position of the intersection
data modify storage spiced.iris:data Face.Collision set value [0.0d, 0.0d, 0.0d]
execute store result storage spiced.iris:data Face.Collision[0] double 0.000001 run scoreboard players get $x_intersection spiced.iris
execute store result storage spiced.iris:data Face.Collision[1] double 0.000001 run scoreboard players get $y_intersection spiced.iris
execute store result storage spiced.iris:data Face.Collision[2] double 0.000001 run scoreboard players get $z_intersection spiced.iris

# See if that intersection falls within the face
execute if score $x_intersection spiced.iris >= $x0 spiced.iris if score $x_intersection spiced.iris <= $x1 spiced.iris \
        if score $y_intersection spiced.iris >= $y0 spiced.iris if score $y_intersection spiced.iris <= $y1 spiced.iris \
        if score $z_intersection spiced.iris >= $z0 spiced.iris if score $z_intersection spiced.iris <= $z1 spiced.iris \
        run return run scoreboard players get $distance spiced.iris

return fail
