#> spiced.iris:raycast/find_next_block_aux
#
# Auxiliary command for running macros from find_next_block
# Note: because there are only three possible input value combinations, they should all be cached and so the overhead from runtime compilation of macro lines should be minimal
#
# @within spiced.iris:raycast/find_next_block
# @input
#   a: The axis along which we are moving (for example, if the ray moves one tile up, this is 'y'). One of 'x', 'y', or 'z'.
#   b: Another axis. One of 'x', 'y', or 'z'.
#   c: The third axis. One of 'x', 'y', or 'z'.

$scoreboard players operation $to_next_block spiced.iris = $to_next_$(a) spiced.iris

# Find the exact position of the ray when it leaves the current tile
$execute if score $d$(a) spiced.iris matches 0.. run scoreboard players add $[$(a)] spiced.iris 1
$execute if score $d$(a) spiced.iris matches 0.. run scoreboard players set ${$(a)} spiced.iris 0
$execute if score $d$(a) spiced.iris matches ..-1 run scoreboard players remove $[$(a)] spiced.iris 1
$execute if score $d$(a) spiced.iris matches ..-1 run scoreboard players set ${$(a)} spiced.iris 1000000

# Calculate new position on the second axis
scoreboard players operation $delta spiced.iris = $to_next_block spiced.iris
$scoreboard players operation $delta spiced.iris *= $d$(b) spiced.iris
scoreboard players operation $delta spiced.iris /= $1000 spiced.iris
$scoreboard players operation ${$(b)} spiced.iris += $delta spiced.iris

# Calculate new position on the third axis
scoreboard players operation $delta spiced.iris = $to_next_block spiced.iris
$scoreboard players operation $delta spiced.iris *= $d$(c) spiced.iris
scoreboard players operation $delta spiced.iris /= $1000 spiced.iris
$scoreboard players operation ${$(c)} spiced.iris += $delta spiced.iris
