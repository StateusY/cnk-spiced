# Generated with MC-Build

execute if score #spiced.crypto_bro.chatting v matches 1 run return 0
scoreboard players set #spiced.crypto_bro.chatting v 1
execute store result storage spiced:temp args.conversation int 1 run random value 1..8
function spiced:crypto_bro/zzz/4 with storage spiced:temp args