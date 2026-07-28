# Generated with MC-Build

# Play sound function
execute at ce123ae4-002f-41e0-921f-4b03d501eece run function spiced:xela_npc/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data ce123ae4-002f-41e0-921f-4b03d501eece.text append from storage chatter:data ce123ae4-002f-41e0-921f-4b03d501eece.message[0]
data remove storage chatter:data ce123ae4-002f-41e0-921f-4b03d501eece.message[0]
# Set text display text
data modify entity ce123ae4-002f-41e0-921f-4b03d501eece text set from storage chatter:data ce123ae4-002f-41e0-921f-4b03d501eece.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data ce123ae4-002f-41e0-921f-4b03d501eece.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data ce123ae4-002f-41e0-921f-4b03d501eece.delay int 1 run random value 4..8
function spiced:xela_npc/zzz/2 with storage chatter:data ce123ae4-002f-41e0-921f-4b03d501eece