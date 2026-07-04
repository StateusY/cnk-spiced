# Generated with MC-Build

say macro
# This can probably be done without an extra function, since we have the selector macro.
$execute as $(selector) at @s run function spiced:chatter/loop/macro/set_text with storage spiced:chatter "$(id)".args
execute store result score #length v run data get storage spiced:chatter "$(id)".args.message
execute if score #length v matches 0 run return 1
# Get a random delay for the next message from the delay range
$execute store result storage spiced:chatter "$(id)".args.delay int 1 run random value $(delayRange)
function spiced:chatter/loop/macro/zzz/1 with storage spiced:chatter "$(id)".args