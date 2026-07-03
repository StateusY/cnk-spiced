#> spiced.iris:get_hitbox/block
#
# Returns the shape of the current block
#
# @within spiced.iris:raycast/test_for_block
# @output
#	storage spiced.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

execute if block ~ ~ ~ #spiced.iris:tree/0 run function spiced.iris:get_hitbox/block/tree/0
execute if block ~ ~ ~ #spiced.iris:tree/1 run function spiced.iris:get_hitbox/block/tree/1
execute if block ~ ~ ~ #spiced.iris:tree/2 run function spiced.iris:get_hitbox/block/tree/2
execute if block ~ ~ ~ #spiced.iris:tree/3 run function spiced.iris:get_hitbox/block/tree/3
execute if block ~ ~ ~ #spiced.iris:tree/4 run function spiced.iris:get_hitbox/block/tree/4
execute if block ~ ~ ~ #spiced.iris:has_block_offset run function spiced.iris:get_hitbox/block/offset
