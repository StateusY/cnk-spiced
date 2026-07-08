# Generated with MC-Build

# Play sound function
execute at f4e11725-a467-4e37-bf5d-d13a1645214d run function spiced:c4t_npc/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data f4e11725-a467-4e37-bf5d-d13a1645214d.text append from storage chatter:data f4e11725-a467-4e37-bf5d-d13a1645214d.message[0]
data remove storage chatter:data f4e11725-a467-4e37-bf5d-d13a1645214d.message[0]
# Set text display text
data modify entity f4e11725-a467-4e37-bf5d-d13a1645214d text set from storage chatter:data f4e11725-a467-4e37-bf5d-d13a1645214d.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data f4e11725-a467-4e37-bf5d-d13a1645214d.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data f4e11725-a467-4e37-bf5d-d13a1645214d.delay int 1 run random value 4..8
function spiced:c4t_npc/zzz/2 with storage chatter:data f4e11725-a467-4e37-bf5d-d13a1645214d