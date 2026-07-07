# Generated with MC-Build

execute if score #spiced.greg.chatting v matches 1 run return 0
execute store result score #length v run data get storage spiced:greg conversation_order
execute if score #length v matches 0 run function spiced:greg/zzz/4
scoreboard players set #spiced.greg.chatting v 1
data modify storage spiced:temp args.conversation set from storage spiced:greg conversation_order[0]
data remove storage spiced:greg conversation_order[0]
function spiced:greg/zzz/5 with storage spiced:temp args