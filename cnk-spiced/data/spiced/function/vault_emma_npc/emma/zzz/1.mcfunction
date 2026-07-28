# Generated with MC-Build

# Play sound function
execute at 5154d289-1915-46d0-8e62-3b3eb1551d32 run function spiced:vault_emma_npc/emma/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data 5154d289-1915-46d0-8e62-3b3eb1551d32.text append from storage chatter:data 5154d289-1915-46d0-8e62-3b3eb1551d32.message[0]
data remove storage chatter:data 5154d289-1915-46d0-8e62-3b3eb1551d32.message[0]
# Set text display text
data modify entity 5154d289-1915-46d0-8e62-3b3eb1551d32 text set from storage chatter:data 5154d289-1915-46d0-8e62-3b3eb1551d32.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data 5154d289-1915-46d0-8e62-3b3eb1551d32.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data 5154d289-1915-46d0-8e62-3b3eb1551d32.delay int 1 run random value 4..8
function spiced:vault_emma_npc/emma/zzz/2 with storage chatter:data 5154d289-1915-46d0-8e62-3b3eb1551d32