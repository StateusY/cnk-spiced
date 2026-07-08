# Generated with MC-Build

# Play sound function
execute at 1c312a49-0377-41eb-967e-b29a8311f5c0 run function spiced:blue_npc/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data 1c312a49-0377-41eb-967e-b29a8311f5c0.text append from storage chatter:data 1c312a49-0377-41eb-967e-b29a8311f5c0.message[0]
data remove storage chatter:data 1c312a49-0377-41eb-967e-b29a8311f5c0.message[0]
# Set text display text
data modify entity 1c312a49-0377-41eb-967e-b29a8311f5c0 text set from storage chatter:data 1c312a49-0377-41eb-967e-b29a8311f5c0.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data 1c312a49-0377-41eb-967e-b29a8311f5c0.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data 1c312a49-0377-41eb-967e-b29a8311f5c0.delay int 1 run random value 4..8
function spiced:blue_npc/zzz/2 with storage chatter:data 1c312a49-0377-41eb-967e-b29a8311f5c0