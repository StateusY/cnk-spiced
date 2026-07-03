#> spiced.iris:get_hitbox/block/xor
#
# Compute bitwise XOR (^) on two scores
#
# @within spiced.iris:get_hitbox/block/offset
# @reads
#   score $a spiced.iris
#       The first operand
#   score $b spiced.iris
#       The second operand
# @output
#   Return: The result of the XOR operation on both operands
#   Success: 1

scoreboard players operation $a^b spiced.iris = $a spiced.iris
scoreboard players operation $a^b spiced.iris += $b spiced.iris

# Compute a&b
scoreboard players set $a&b spiced.iris 0
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players set $a&b spiced.iris -2147483648
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 1073741824
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 536870912
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 268435456
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 134217728
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 67108864
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 33554432
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 16777216
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 8388608
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 4194304
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 2097152
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 1048576
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 524288
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 262144
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 131072
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 65536
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 32768
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 16384
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 8192
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 4096
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 2048
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 1024
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 512
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 256
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 128
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 64
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 32
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 16
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 8
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 4
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 2
scoreboard players operation $a spiced.iris += $a spiced.iris
scoreboard players operation $b spiced.iris += $b spiced.iris
execute if score $a spiced.iris matches ..-1 if score $b spiced.iris matches ..-1 run scoreboard players add $a&b spiced.iris 1

# Compute a^b = a+b-2(a&b)
scoreboard players operation $a^b spiced.iris -= $a&b spiced.iris
scoreboard players operation $a^b spiced.iris -= $a&b spiced.iris

# Return the result
return run scoreboard players get $a^b spiced.iris
