#> spiced.iris:raycast/on_hit
#
# Writes all available information about the encountered block or entity
# See spiced.iris:get_target for full documentation
#
# @within spiced.iris:raycast/loop

# Remove the executing tag
tag @s remove spiced.iris.executing

# Write target type (one of BLOCK, ENTITY)
execute if score $block_hit spiced.iris matches 1 if score $entity_hit spiced.iris matches 0 run data modify storage spiced.iris:output TargetType set value "BLOCK"
execute if score $entity_hit spiced.iris matches 1 if score $block_hit spiced.iris matches 0 run data modify storage spiced.iris:output TargetType set value "ENTITY"
execute if score $block_hit spiced.iris matches 1 if score $entity_hit spiced.iris matches 1 if score $block_distance spiced.iris <= $entity_distance spiced.iris run data modify storage spiced.iris:output TargetType set value "BLOCK"
execute if score $block_hit spiced.iris matches 1 if score $entity_hit spiced.iris matches 1 if score $block_distance spiced.iris > $entity_distance spiced.iris run data modify storage spiced.iris:output TargetType set value "ENTITY"

# Write targeted block
execute if data storage spiced.iris:output {TargetType: "BLOCK"} run data modify storage spiced.iris:output TargetedBlock set value [0, 0, 0]
execute if data storage spiced.iris:output {TargetType: "BLOCK"} store result storage spiced.iris:output TargetedBlock[0] int 1 run scoreboard players get $[x] spiced.iris
execute if data storage spiced.iris:output {TargetType: "BLOCK"} store result storage spiced.iris:output TargetedBlock[1] int 1 run scoreboard players get $[y] spiced.iris
execute if data storage spiced.iris:output {TargetType: "BLOCK"} store result storage spiced.iris:output TargetedBlock[2] int 1 run scoreboard players get $[z] spiced.iris
execute if data storage spiced.iris:output {TargetType: "BLOCK"} align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags: ["iris", "spiced.iris.targeted_block"]}

# Write targeted entity
execute if data storage spiced.iris:output {TargetType: "ENTITY"} run data modify storage spiced.iris:output TargetedEntity set from storage spiced.iris:data TargetedBox.entity_id
execute if data storage spiced.iris:output {TargetType: "ENTITY"} run data remove storage spiced.iris:data TargetedBox.entity_id
execute if data storage spiced.iris:output {TargetType: "ENTITY"} run data remove storage spiced.iris:data TargetedFace.entity_id
execute if data storage spiced.iris:output {TargetType: "ENTITY"} store result score $entity_id spiced.iris run data get storage spiced.iris:output TargetedEntity
execute if data storage spiced.iris:output {TargetType: "ENTITY"} as @e[tag=spiced.iris.possible_target] if score @s spiced.iris.id = $entity_id spiced.iris run tag @s add spiced.iris.targeted_entity
execute if data storage spiced.iris:output {TargetType: "ENTITY"} run tag @e remove spiced.iris.possible_target

# Write target position
data modify storage spiced.iris:output TargetPosition.tile set value [0, 0, 0]
execute store result storage spiced.iris:output TargetPosition.tile[0] int 1 run scoreboard players get $[x] spiced.iris
execute store result storage spiced.iris:output TargetPosition.tile[1] int 1 run scoreboard players get $[y] spiced.iris
execute store result storage spiced.iris:output TargetPosition.tile[2] int 1 run scoreboard players get $[z] spiced.iris
data modify storage spiced.iris:output TargetPosition.point set from storage spiced.iris:data TargetPoint
execute store result score ${x} spiced.iris run data get storage spiced.iris:output TargetPosition.point[0] 1000000
execute store result score ${y} spiced.iris run data get storage spiced.iris:output TargetPosition.point[1] 1000000
execute store result score ${z} spiced.iris run data get storage spiced.iris:output TargetPosition.point[2] 1000000

# Write targeted box
data modify storage spiced.iris:output TargetedBox set from storage spiced.iris:data TargetedBox

# Write targeted face
data modify storage spiced.iris:output TargetedFace set from storage spiced.iris:data TargetedFace
execute if data storage spiced.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx spiced.iris matches 0.. run data modify storage spiced.iris:output TargetedFace.Direction set value "WEST"
execute if data storage spiced.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx spiced.iris matches ..-1 run data modify storage spiced.iris:output TargetedFace.Direction set value "EAST"
execute if data storage spiced.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy spiced.iris matches 0.. run data modify storage spiced.iris:output TargetedFace.Direction set value "DOWN"
execute if data storage spiced.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy spiced.iris matches ..-1 run data modify storage spiced.iris:output TargetedFace.Direction set value "UP"
execute if data storage spiced.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz spiced.iris matches 0.. run data modify storage spiced.iris:output TargetedFace.Direction set value "NORTH"
execute if data storage spiced.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz spiced.iris matches ..-1 run data modify storage spiced.iris:output TargetedFace.Direction set value "SOUTH"

# Write total distance
execute if data storage spiced.iris:output {TargetType: "BLOCK"} run scoreboard players operation $total_distance spiced.iris += $block_distance spiced.iris
execute if data storage spiced.iris:output {TargetType: "ENTITY"} run scoreboard players operation $total_distance spiced.iris += $entity_distance spiced.iris
execute store result storage spiced.iris:output Distance double 0.000001 run scoreboard players get $total_distance spiced.iris

# Run callback
execute if data storage spiced.iris:settings Callback run data modify storage spiced.iris:args function set from storage spiced.iris:settings Callback
execute if data storage spiced.iris:settings Callback run function spiced.iris:raycast/macro_functions/callback with storage spiced.iris:args

return run scoreboard players get $total_distance spiced.iris
