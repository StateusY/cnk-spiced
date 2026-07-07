# Generated with MC-Build

# Play sound function
execute at b57a3c1f-68da-441b-9361-f092d6630b55 run function spiced:stateus_npc/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data b57a3c1f-68da-441b-9361-f092d6630b55.text append from storage chatter:data b57a3c1f-68da-441b-9361-f092d6630b55.message[0]
data remove storage chatter:data b57a3c1f-68da-441b-9361-f092d6630b55.message[0]
# Set text display text
data modify entity b57a3c1f-68da-441b-9361-f092d6630b55 text set from storage chatter:data b57a3c1f-68da-441b-9361-f092d6630b55.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data b57a3c1f-68da-441b-9361-f092d6630b55.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data b57a3c1f-68da-441b-9361-f092d6630b55.delay int 1 run random value 4..8
function spiced:stateus_npc/zzz/2 with storage chatter:data b57a3c1f-68da-441b-9361-f092d6630b55