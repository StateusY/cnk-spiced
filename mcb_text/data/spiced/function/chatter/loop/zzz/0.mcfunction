# Generated with MC-Build

$execute as $(selector) at @s run function spiced:chatter/loop/zzz/1 with storage spiced:chatter args
execute store result score #length v run data get storage spiced:chatter args.message
execute if score #length v matches 0 run return 1
# Get a random delay for the next message from the delay range
$execute store result storage spiced:chatter args.delay int 1 run random value $(delayRange)
function spiced:chatter/loop/zzz/2 with storage spiced:chatter args