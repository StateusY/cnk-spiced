# Generated with MC-Build

# Play sound function
execute at e2e84d58-29e9-48e3-8998-f6edb7f44062 run function spiced:vault_emma_npc/emma/sounds
# Append the next message to the text display and remove it from the message list
data modify storage chatter:data e2e84d58-29e9-48e3-8998-f6edb7f44062.text append from storage chatter:data e2e84d58-29e9-48e3-8998-f6edb7f44062.message[0]
data remove storage chatter:data e2e84d58-29e9-48e3-8998-f6edb7f44062.message[0]
# Set text display text
data modify entity e2e84d58-29e9-48e3-8998-f6edb7f44062 text set from storage chatter:data e2e84d58-29e9-48e3-8998-f6edb7f44062.text
# If there are no more messages, break the loop
execute store result score #length mcb.internal run data get storage chatter:data e2e84d58-29e9-48e3-8998-f6edb7f44062.message
execute if score #length mcb.internal matches 0 run return 1
# Wait a random amount of time before displaying the next message
execute store result storage chatter:data e2e84d58-29e9-48e3-8998-f6edb7f44062.delay int 1 run random value 4..8
function spiced:vault_emma_npc/emma/zzz/2 with storage chatter:data e2e84d58-29e9-48e3-8998-f6edb7f44062