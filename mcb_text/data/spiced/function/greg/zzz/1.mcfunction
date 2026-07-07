# Generated with MC-Build

# Play sound function
execute at dfdc58cb-5a14-4c6a-8297-eb69383b79c8 run function spiced:greg/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data dfdc58cb-5a14-4c6a-8297-eb69383b79c8.text append from storage chatter:data dfdc58cb-5a14-4c6a-8297-eb69383b79c8.message[0]
data remove storage chatter:data dfdc58cb-5a14-4c6a-8297-eb69383b79c8.message[0]
# Set text display text
data modify entity dfdc58cb-5a14-4c6a-8297-eb69383b79c8 text set from storage chatter:data dfdc58cb-5a14-4c6a-8297-eb69383b79c8.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data dfdc58cb-5a14-4c6a-8297-eb69383b79c8.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data dfdc58cb-5a14-4c6a-8297-eb69383b79c8.delay int 1 run random value 4..8
function spiced:greg/zzz/2 with storage chatter:data dfdc58cb-5a14-4c6a-8297-eb69383b79c8