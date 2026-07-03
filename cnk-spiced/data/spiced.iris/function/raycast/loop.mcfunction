#> spiced.iris:raycast/loop
#
# Loops forward until an obstacle is hit or until the maximum recursion depth has been reached
#
# @context a marker and the current ray position
# @within spiced.iris:get_target
# @within spiced.iris:raycast/loop

# Test for collisions
execute store success score $block_hit spiced.iris store result score $block_distance spiced.iris run function spiced.iris:raycast/test_for_block
execute store success score $entity_hit spiced.iris store result score $entity_distance spiced.iris run function spiced.iris:raycast/test_for_entity
execute if score $block_hit spiced.iris matches 1 run return run function spiced.iris:raycast/on_hit
execute if score $entity_hit spiced.iris matches 1 run return run function spiced.iris:raycast/on_hit

# Proceed to the next block
execute store result score $to_next_block spiced.iris run function spiced.iris:raycast/find_next_block
scoreboard players operation $total_distance spiced.iris += $to_next_block spiced.iris

# Fail if the maximum recursion depth is reached and nothing was found
scoreboard players add $depth spiced.iris 1
execute if score $depth spiced.iris = $max_depth spiced.iris run tag @s remove spiced.iris.executing
execute if score $depth spiced.iris = $max_depth spiced.iris run return fail

# Otherwise, loop this function at the next block
execute if data storage spiced.iris:data {NextCoordinateChange: "x"} if score $dx spiced.iris matches 0.. positioned ~1 ~ ~ run return run function spiced.iris:raycast/loop
execute if data storage spiced.iris:data {NextCoordinateChange: "x"} if score $dx spiced.iris matches ..-1 positioned ~-1 ~ ~ run return run function spiced.iris:raycast/loop
execute if data storage spiced.iris:data {NextCoordinateChange: "y"} if score $dy spiced.iris matches 0.. positioned ~ ~1 ~ run return run function spiced.iris:raycast/loop
execute if data storage spiced.iris:data {NextCoordinateChange: "y"} if score $dy spiced.iris matches ..-1 positioned ~ ~-1 ~ run return run function spiced.iris:raycast/loop
execute if data storage spiced.iris:data {NextCoordinateChange: "z"} if score $dz spiced.iris matches 0.. positioned ~ ~ ~1 run return run function spiced.iris:raycast/loop
execute if data storage spiced.iris:data {NextCoordinateChange: "z"} if score $dz spiced.iris matches ..-1 positioned ~ ~ ~-1 run return run function spiced.iris:raycast/loop
execute if score $depth spiced.iris < $max_depth spiced.iris at @s run return run function spiced.iris:raycast/loop
