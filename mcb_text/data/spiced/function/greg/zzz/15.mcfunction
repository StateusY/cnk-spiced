# Generated with MC-Build

scoreboard players set #check mcb.internal 0
execute if function spiced:greg/test run scoreboard players set #check mcb.internal 1
execute if score #check mcb.internal matches 0 run return run schedule function spiced:greg/zzz/15 8t replace
schedule function spiced:greg/zzz/19 8t replace