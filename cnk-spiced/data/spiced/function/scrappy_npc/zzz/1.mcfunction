# Generated with MC-Build

# Play sound function
execute at 77846f35-35d8-477f-9a07-7aba648bb730 run function spiced:scrappy_npc/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data 77846f35-35d8-477f-9a07-7aba648bb730.text append from storage chatter:data 77846f35-35d8-477f-9a07-7aba648bb730.message[0]
data remove storage chatter:data 77846f35-35d8-477f-9a07-7aba648bb730.message[0]
# Set text display text
data modify entity 77846f35-35d8-477f-9a07-7aba648bb730 text set from storage chatter:data 77846f35-35d8-477f-9a07-7aba648bb730.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data 77846f35-35d8-477f-9a07-7aba648bb730.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data 77846f35-35d8-477f-9a07-7aba648bb730.delay int 1 run random value 4..8
function spiced:scrappy_npc/zzz/2 with storage chatter:data 77846f35-35d8-477f-9a07-7aba648bb730