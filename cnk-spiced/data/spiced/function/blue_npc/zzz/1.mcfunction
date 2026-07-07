# Generated with MC-Build

# Play sound function
execute at e0fcef5a-63bd-45ce-bba5-4283f1fc432b run function spiced:blue_npc/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data e0fcef5a-63bd-45ce-bba5-4283f1fc432b.text append from storage chatter:data e0fcef5a-63bd-45ce-bba5-4283f1fc432b.message[0]
data remove storage chatter:data e0fcef5a-63bd-45ce-bba5-4283f1fc432b.message[0]
# Set text display text
data modify entity e0fcef5a-63bd-45ce-bba5-4283f1fc432b text set from storage chatter:data e0fcef5a-63bd-45ce-bba5-4283f1fc432b.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data e0fcef5a-63bd-45ce-bba5-4283f1fc432b.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data e0fcef5a-63bd-45ce-bba5-4283f1fc432b.delay int 1 run random value 4..8
function spiced:blue_npc/zzz/2 with storage chatter:data e0fcef5a-63bd-45ce-bba5-4283f1fc432b