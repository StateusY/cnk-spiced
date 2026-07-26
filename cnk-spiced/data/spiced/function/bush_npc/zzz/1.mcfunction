# Generated with MC-Build

# Play sound function
execute at cae4cdad-9900-43d6-a82a-e77291fad084 run function spiced:bush_npc/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data cae4cdad-9900-43d6-a82a-e77291fad084.text append from storage chatter:data cae4cdad-9900-43d6-a82a-e77291fad084.message[0]
data remove storage chatter:data cae4cdad-9900-43d6-a82a-e77291fad084.message[0]
# Set text display text
data modify entity cae4cdad-9900-43d6-a82a-e77291fad084 text set from storage chatter:data cae4cdad-9900-43d6-a82a-e77291fad084.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data cae4cdad-9900-43d6-a82a-e77291fad084.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data cae4cdad-9900-43d6-a82a-e77291fad084.delay int 1 run random value 9..12
function spiced:bush_npc/zzz/2 with storage chatter:data cae4cdad-9900-43d6-a82a-e77291fad084