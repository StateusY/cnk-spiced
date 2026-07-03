#> spiced.iris:raycast/test_for_block
#
# @within spiced.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if a block was hit, 0 otherwise

# Check if the current block is loaded
execute store success score $loaded spiced.iris if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ masked
execute if score $loaded spiced.iris matches 0 run return fail

# Check if the current block is blacklisted, or explicitly not whitelisted
execute if data storage spiced.iris:settings Whitelist run data modify storage spiced.iris:args id set from storage spiced.iris:settings Whitelist
execute if data storage spiced.iris:settings Whitelist store success score $is_whitelisted spiced.iris run function spiced.iris:raycast/macro_functions/block_id_test with storage spiced.iris:args
execute if data storage spiced.iris:settings Whitelist unless score $is_whitelisted spiced.iris matches 1 run return fail
execute if data storage spiced.iris:settings Blacklist run data modify storage spiced.iris:args id set from storage spiced.iris:settings Blacklist
execute if data storage spiced.iris:settings Blacklist store success score $is_blacklisted spiced.iris run function spiced.iris:raycast/macro_functions/block_id_test with storage spiced.iris:args
execute if data storage spiced.iris:settings Blacklist if score $is_blacklisted spiced.iris matches 1 run return fail

# See if the block is hit
function spiced.iris:get_hitbox/block
execute unless data storage spiced.iris:data Shape[0] run return fail
return run function spiced.iris:raycast/check_intersection/loop
