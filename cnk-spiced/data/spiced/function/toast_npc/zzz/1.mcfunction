# Generated with MC-Build

# Play sound function
execute at 71c8e33d-aec2-4813-af0a-1608bef4fd27 run function spiced:toast_npc/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data 71c8e33d-aec2-4813-af0a-1608bef4fd27.text append from storage chatter:data 71c8e33d-aec2-4813-af0a-1608bef4fd27.message[0]
data remove storage chatter:data 71c8e33d-aec2-4813-af0a-1608bef4fd27.message[0]
# Set text display text
data modify entity 71c8e33d-aec2-4813-af0a-1608bef4fd27 text set from storage chatter:data 71c8e33d-aec2-4813-af0a-1608bef4fd27.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data 71c8e33d-aec2-4813-af0a-1608bef4fd27.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data 71c8e33d-aec2-4813-af0a-1608bef4fd27.delay int 1 run random value 4..8
function spiced:toast_npc/zzz/2 with storage chatter:data 71c8e33d-aec2-4813-af0a-1608bef4fd27