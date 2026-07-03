#> spiced.iris:raycast/check_intersection/loop
#
# Tests for ray-box intersections with all axis-aligned bounding boxes of a hitbox
#
# @within spiced.iris:raycast/test_for_block
# @within spiced.iris:raycast/test_for_entity
# @within spiced.iris:raycast/check_intersection/loop
# @reads
#   storage spiced.iris:data Shape
#       A list of axis-aligned bounding boxes of the form {min: [x, y, z], max: [x, y, z]}
# @output
#   Success: 1 if a box is hit, 0 otherwise
#   Result: the distance to the first box that is hit

# Test for intersection with a single bounding box
data modify storage spiced.iris:data Box set from storage spiced.iris:data Shape[-1]
data remove storage spiced.iris:data Shape[-1]
execute store success score $is_hit spiced.iris store result score $distance spiced.iris run function spiced.iris:raycast/check_intersection/ray_box

# If this box is indeed hit before any other this far, remember the targeted box and the targeted face
execute if score $is_hit spiced.iris matches 1 if score $distance spiced.iris >= $min_distance spiced.iris run scoreboard players set $is_hit spiced.iris 0
execute if score $is_hit spiced.iris matches 1 run data modify storage spiced.iris:data TargetedBox set from storage spiced.iris:data Box
execute if score $is_hit spiced.iris matches 1 if score $hits_x_face spiced.iris matches 1 if score $to_aabb spiced.iris = $to_x_face spiced.iris run data modify storage spiced.iris:data TargetedFace set from storage spiced.iris:data Faces[0]
execute if score $is_hit spiced.iris matches 1 if score $hits_y_face spiced.iris matches 1 if score $to_aabb spiced.iris = $to_y_face spiced.iris run data modify storage spiced.iris:data TargetedFace set from storage spiced.iris:data Faces[1]
execute if score $is_hit spiced.iris matches 1 if score $hits_z_face spiced.iris matches 1 if score $to_aabb spiced.iris = $to_z_face spiced.iris run data modify storage spiced.iris:data TargetedFace set from storage spiced.iris:data Faces[2]
execute if score $is_hit spiced.iris matches 1 run scoreboard players operation $min_distance spiced.iris = $distance spiced.iris

# Loop this function until all boxes have been analyzed
execute if data storage spiced.iris:data Shape[-1] run return run function spiced.iris:raycast/check_intersection/loop
execute if score $min_distance spiced.iris matches 2147483647 run return fail
scoreboard players operation $min_distance spiced.iris *= $1000 spiced.iris
return run scoreboard players get $min_distance spiced.iris
