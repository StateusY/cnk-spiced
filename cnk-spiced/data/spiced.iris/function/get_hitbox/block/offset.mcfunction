#> spiced.iris:get_hitbox/block/offset
#
# Computes seeded block offset for e.g. flowers, assuming the shape comprises a single box
#
# @within spiced.iris:get_hitbox/block
# @writes
#	storage spiced.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Compute seed(x, y, z)
scoreboard players operation $a spiced.iris = $[x] spiced.iris
scoreboard players operation $a spiced.iris *= $3129871 spiced.iris
scoreboard players operation $b spiced.iris = $[z] spiced.iris
scoreboard players operation $b spiced.iris *= $116129781 spiced.iris
execute store result score $a^b spiced.iris run function spiced.iris:get_hitbox/block/xor

scoreboard players operation $(a^b)² spiced.iris = $a^b spiced.iris
scoreboard players operation $(a^b)² spiced.iris *= $a^b spiced.iris
scoreboard players operation $11*(a^b) spiced.iris = $a^b spiced.iris
scoreboard players operation $11*(a^b) spiced.iris *= $11 spiced.iris

scoreboard players operation $seed spiced.iris = $(a^b)² spiced.iris
scoreboard players operation $seed spiced.iris *= $42317861 spiced.iris
scoreboard players operation $seed spiced.iris += $11*(a^b) spiced.iris
scoreboard players operation $seed spiced.iris /= $65536 spiced.iris

# Compute offsets
scoreboard players operation $x_offset spiced.iris = $seed spiced.iris
scoreboard players operation $x_offset spiced.iris %= $16 spiced.iris
scoreboard players operation $x_offset spiced.iris *= $33333 spiced.iris

scoreboard players operation $z_offset spiced.iris = $seed spiced.iris
scoreboard players operation $z_offset spiced.iris /= $256 spiced.iris
scoreboard players operation $z_offset spiced.iris %= $16 spiced.iris
scoreboard players operation $z_offset spiced.iris *= $33333 spiced.iris

# Adjust/clamp for pointed dripstone blocks
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $x_offset spiced.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $z_offset spiced.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset spiced.iris matches ..0 run scoreboard players set $x_offset spiced.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset spiced.iris matches 250000.. run scoreboard players set $x_offset spiced.iris 250000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset spiced.iris matches ..0 run scoreboard players set $z_offset spiced.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset spiced.iris matches 250000.. run scoreboard players set $z_offset spiced.iris 250000

# Apply offsets to the generated shape
execute store result score $min_x spiced.iris run data get storage spiced.iris:data Shape[0].min[0] 1000000
execute store result storage spiced.iris:data Shape[0].min[0] double 0.000001 run scoreboard players operation $min_x spiced.iris += $x_offset spiced.iris
execute store result score $min_z spiced.iris run data get storage spiced.iris:data Shape[0].min[2] 1000000
execute store result storage spiced.iris:data Shape[0].min[2] double 0.000001 run scoreboard players operation $min_z spiced.iris += $z_offset spiced.iris
execute store result score $max_x spiced.iris run data get storage spiced.iris:data Shape[0].max[0] 1000000
execute store result storage spiced.iris:data Shape[0].max[0] double 0.000001 run scoreboard players operation $max_x spiced.iris += $x_offset spiced.iris
execute store result score $max_z spiced.iris run data get storage spiced.iris:data Shape[0].max[2] 1000000
execute store result storage spiced.iris:data Shape[0].max[2] double 0.000001 run scoreboard players operation $max_z spiced.iris += $z_offset spiced.iris
