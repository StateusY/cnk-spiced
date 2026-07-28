# Generated with MC-Build

execute positioned 189 53 181 run function spiced:quinn_npc/eats_as_locator
scoreboard players remove #spiced.picnic_eat_random.quinn spiced.dummy 1
execute if score #spiced.picnic_eat_random.quinn spiced.dummy matches 1.. run schedule function spiced:quinn_npc/zzz/0 4t replace