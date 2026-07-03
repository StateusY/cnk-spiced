#> spiced.iris:get_hitbox/entity
#
# Returns the shape of the executing entity
#
# @within spiced.iris:raycast/test_for_entity
# @writes
#	storage spiced.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Get entity dimensions
scoreboard players set $entity_found spiced.iris 0
execute if score $entity_found spiced.iris matches 0 if entity @s[type=#spiced.iris:tree/0] run function spiced.iris:get_hitbox/entity/tree/0
execute if score $entity_found spiced.iris matches 0 if entity @s[type=#spiced.iris:tree/1] run function spiced.iris:get_hitbox/entity/tree/1
execute if score $entity_found spiced.iris matches 0 if entity @s[type=#spiced.iris:tree/2] run function spiced.iris:get_hitbox/entity/tree/2
execute if score $entity_found spiced.iris matches 0 if entity @s[type=#spiced.iris:tree/3] run function spiced.iris:get_hitbox/entity/tree/3
execute if score $entity_found spiced.iris matches 0 if entity @s[type=#spiced.iris:tree/4] run function spiced.iris:get_hitbox/entity/tree/4

# Scale
function spiced.iris:get_hitbox/entity/scale
execute if predicate spiced.iris:baby run scoreboard players operation $entity_width spiced.iris /= $2 spiced.iris
execute if predicate spiced.iris:baby run scoreboard players operation $entity_height spiced.iris /= $2 spiced.iris

# Get the entity's coordinates
scoreboard players operation $entity_[x] spiced.iris = $[x] spiced.iris
scoreboard players operation $entity_[y] spiced.iris = $[y] spiced.iris
scoreboard players operation $entity_[z] spiced.iris = $[z] spiced.iris
scoreboard players operation $entity_{x} spiced.iris = ${x} spiced.iris
scoreboard players operation $entity_{y} spiced.iris = ${y} spiced.iris
scoreboard players operation $entity_{z} spiced.iris = ${z} spiced.iris
execute at @s summon minecraft:marker run function spiced.iris:get_position/get_coordinates
kill @e[type=minecraft:marker, tag=spiced.iris.coordinate_getter]
scoreboard players operation $entity_[x] spiced.iris >< $[x] spiced.iris
scoreboard players operation $entity_[y] spiced.iris >< $[y] spiced.iris
scoreboard players operation $entity_[z] spiced.iris >< $[z] spiced.iris
scoreboard players operation $entity_{x} spiced.iris >< ${x} spiced.iris
scoreboard players operation $entity_{y} spiced.iris >< ${y} spiced.iris
scoreboard players operation $entity_{z} spiced.iris >< ${z} spiced.iris

# Save how many blocks away the entity is from the block origin
scoreboard players operation $entity_dx spiced.iris = $entity_[x] spiced.iris
scoreboard players operation $entity_dx spiced.iris -= $[x] spiced.iris
scoreboard players operation $entity_dx spiced.iris *= $1000000 spiced.iris
scoreboard players operation $entity_dx spiced.iris += $entity_{x} spiced.iris
scoreboard players operation $entity_dy spiced.iris = $entity_[y] spiced.iris
scoreboard players operation $entity_dy spiced.iris -= $[y] spiced.iris
scoreboard players operation $entity_dy spiced.iris *= $1000000 spiced.iris
scoreboard players operation $entity_dy spiced.iris += $entity_{y} spiced.iris
scoreboard players operation $entity_dz spiced.iris = $entity_[z] spiced.iris
scoreboard players operation $entity_dz spiced.iris -= $[z] spiced.iris
scoreboard players operation $entity_dz spiced.iris *= $1000000 spiced.iris
scoreboard players operation $entity_dz spiced.iris += $entity_{z} spiced.iris

# Get the coordinates of the bounding box
scoreboard players operation $entity_half_width spiced.iris = $entity_width spiced.iris
scoreboard players operation $entity_half_width spiced.iris /= $2 spiced.iris
scoreboard players operation $entity_x0 spiced.iris = $entity_dx spiced.iris
scoreboard players operation $entity_x0 spiced.iris -= $entity_half_width spiced.iris
execute if score $entity_x0 spiced.iris matches ..0 run scoreboard players set $entity_x0 spiced.iris 0
scoreboard players operation $entity_y0 spiced.iris = $entity_dy spiced.iris
execute if score $entity_y0 spiced.iris matches ..0 run scoreboard players set $entity_y0 spiced.iris 0
scoreboard players operation $entity_z0 spiced.iris = $entity_dz spiced.iris
scoreboard players operation $entity_z0 spiced.iris -= $entity_half_width spiced.iris
execute if score $entity_z0 spiced.iris matches ..0 run scoreboard players set $entity_z0 spiced.iris 0
scoreboard players operation $entity_x1 spiced.iris = $entity_dx spiced.iris
scoreboard players operation $entity_x1 spiced.iris += $entity_half_width spiced.iris
execute if score $entity_x1 spiced.iris matches 1000000.. run scoreboard players set $entity_x1 spiced.iris 1000000
scoreboard players operation $entity_y1 spiced.iris = $entity_dy spiced.iris
scoreboard players operation $entity_y1 spiced.iris += $entity_height spiced.iris
execute if score $entity_y1 spiced.iris matches 1000000.. run scoreboard players set $entity_y1 spiced.iris 1000000
scoreboard players operation $entity_z1 spiced.iris = $entity_dz spiced.iris
scoreboard players operation $entity_z1 spiced.iris += $entity_half_width spiced.iris
execute if score $entity_z1 spiced.iris matches 1000000.. run scoreboard players set $entity_z1 spiced.iris 1000000

# Store these coordinates to storage
data modify storage spiced.iris:data Shape append value {type: "ENTITY", min: [0.0, 0.0, 0.0], max: [0.0, 0.0, 0.0]}
execute store result storage spiced.iris:data Shape[-1].min[0] double 0.000001 run scoreboard players get $entity_x0 spiced.iris
execute store result storage spiced.iris:data Shape[-1].min[1] double 0.000001 run scoreboard players get $entity_y0 spiced.iris
execute store result storage spiced.iris:data Shape[-1].min[2] double 0.000001 run scoreboard players get $entity_z0 spiced.iris
execute store result storage spiced.iris:data Shape[-1].max[0] double 0.000001 run scoreboard players get $entity_x1 spiced.iris
execute store result storage spiced.iris:data Shape[-1].max[1] double 0.000001 run scoreboard players get $entity_y1 spiced.iris
execute store result storage spiced.iris:data Shape[-1].max[2] double 0.000001 run scoreboard players get $entity_z1 spiced.iris

# Special case for item frames and paintings which are annoying
#execute if score $entity_found spiced.iris matches 0 store success score $entity_found spiced.iris store success score $entity.is_item_frame spiced.iris if entity @s[type=#spiced.iris:item_frames]
#execute if score $entity.is_item_frame spiced.iris matches 1 run function spiced.iris:get_hitbox/entity/item_frame

# Give this entity a tag and an ID, and store the ID in the hitbox
tag @s add spiced.iris.possible_target
scoreboard players operation @s spiced.iris.id = $max_entity_id spiced.iris.id
execute store result storage spiced.iris:data Shape[-1].entity_id int 1 run scoreboard players get @s spiced.iris.id
scoreboard players add $max_entity_id spiced.iris.id 1
