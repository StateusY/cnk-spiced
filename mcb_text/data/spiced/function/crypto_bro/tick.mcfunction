# Generated with MC-Build

execute unless entity @a[predicate=spiced:crypto_bro/player_nearby] run return 0
execute if score #spiced.crypto_bro.chatting v matches 1 as @e[type=mannequin,tag=spiced.crypto_bro,limit=1] at @s run return run rotate @s facing entity @p
execute if score #spiced.crypto_bro.mining_timer v matches 1.. run scoreboard players remove #spiced.crypto_bro.mining_timer v 1
execute if score #spiced.crypto_bro.mining_timer v matches 0 run function spiced:crypto_bro/zzz/0