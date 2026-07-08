# Generated with MC-Build

# Play sound function
execute at e73fcae3-5c03-41c8-aab8-496fe1719fe2 run function spiced:mantis_npc/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data e73fcae3-5c03-41c8-aab8-496fe1719fe2.text append from storage chatter:data e73fcae3-5c03-41c8-aab8-496fe1719fe2.message[0]
data remove storage chatter:data e73fcae3-5c03-41c8-aab8-496fe1719fe2.message[0]
# Set text display text
data modify entity e73fcae3-5c03-41c8-aab8-496fe1719fe2 text set from storage chatter:data e73fcae3-5c03-41c8-aab8-496fe1719fe2.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data e73fcae3-5c03-41c8-aab8-496fe1719fe2.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data e73fcae3-5c03-41c8-aab8-496fe1719fe2.delay int 1 run random value 4..8
function spiced:mantis_npc/zzz/2 with storage chatter:data e73fcae3-5c03-41c8-aab8-496fe1719fe2