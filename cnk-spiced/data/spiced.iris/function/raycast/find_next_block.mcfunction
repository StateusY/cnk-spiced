#> spiced.iris:raycast/find_next_block
#
# Find the coordinates of the next tile that should be traversed by the ray
#
# @within spiced.iris:raycast/loop
# @writes
#   scores $[x] $[y] $[z] spiced.iris
#       The new position
#   scores $last_[x] $last_[y] $last_[z] spiced.iris
#       The previous position
# @output
#   Result: The distance to the next block
#   Success: 1

# Save previous coordinates
scoreboard players operation $last_[x] spiced.iris = $[x] spiced.iris
scoreboard players operation $last_[y] spiced.iris = $[y] spiced.iris
scoreboard players operation $last_[z] spiced.iris = $[z] spiced.iris

# See what distance the ray needs to travel to hit another tile with a different x coordinate
execute if score $dx spiced.iris matches 0.. run scoreboard players set $to_next_x spiced.iris 1000000000
execute if score $dx spiced.iris matches ..-1 run scoreboard players set $to_next_x spiced.iris 0
scoreboard players operation ${x}*1000 spiced.iris = ${x} spiced.iris
scoreboard players operation ${x}*1000 spiced.iris *= $1000 spiced.iris
scoreboard players operation $to_next_x spiced.iris -= ${x}*1000 spiced.iris
scoreboard players operation $to_next_x spiced.iris /= $dx spiced.iris

# See what distance the ray needs to travel to hit another tile with a different y coordinate
execute if score $dy spiced.iris matches 0.. run scoreboard players set $to_next_y spiced.iris 1000000000
execute if score $dy spiced.iris matches ..-1 run scoreboard players set $to_next_y spiced.iris 0
scoreboard players operation ${y}*1000 spiced.iris = ${y} spiced.iris
scoreboard players operation ${y}*1000 spiced.iris *= $1000 spiced.iris
scoreboard players operation $to_next_y spiced.iris -= ${y}*1000 spiced.iris
scoreboard players operation $to_next_y spiced.iris /= $dy spiced.iris

# See what distance the ray needs to travel to hit another tile with a different z coordinate
execute if score $dz spiced.iris matches 0.. run scoreboard players set $to_next_z spiced.iris 1000000000
execute if score $dz spiced.iris matches ..-1 run scoreboard players set $to_next_z spiced.iris 0
scoreboard players operation ${z}*1000 spiced.iris = ${z} spiced.iris
scoreboard players operation ${z}*1000 spiced.iris *= $1000 spiced.iris
scoreboard players operation $to_next_z spiced.iris -= ${z}*1000 spiced.iris
scoreboard players operation $to_next_z spiced.iris /= $dz spiced.iris

# Determine which distance is the shortest
execute if score $to_next_x spiced.iris <= $to_next_y spiced.iris if score $to_next_x spiced.iris <= $to_next_z spiced.iris run data merge storage spiced.iris:data {NextCoordinateChange: "x"}
execute if score $to_next_y spiced.iris <= $to_next_x spiced.iris if score $to_next_y spiced.iris <= $to_next_z spiced.iris run data merge storage spiced.iris:data {NextCoordinateChange: "y"}
execute if score $to_next_z spiced.iris <= $to_next_x spiced.iris if score $to_next_z spiced.iris <= $to_next_y spiced.iris run data merge storage spiced.iris:data {NextCoordinateChange: "z"}

# Calculate the new coordinates when the ray reaches the next tile
execute if data storage spiced.iris:data {NextCoordinateChange: "x"} run data modify storage spiced.iris:args {} merge value {a: "x", b: "y", c: "z"}
execute if data storage spiced.iris:data {NextCoordinateChange: "y"} run data modify storage spiced.iris:args {} merge value {a: "y", b: "z", c: "x"}
execute if data storage spiced.iris:data {NextCoordinateChange: "z"} run data modify storage spiced.iris:args {} merge value {a: "z", b: "x", c: "y"}
function spiced.iris:raycast/macro_functions/find_next_block_aux with storage spiced.iris:args

# Return the added distance
return run scoreboard players operation $to_next_block spiced.iris *= $1000 spiced.iris
