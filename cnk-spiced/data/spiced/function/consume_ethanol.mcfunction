advancement revoke @s only spiced:consume_ethanol
scoreboard players operation @s spiced.ethanol_drunk += $1 spiced.constant

execute if entity @s[advancements={spiced:visible/too_much_ethanol=false}] if score @s spiced.ethanol_drunk >= $100 spiced.constant run advancement grant @s only spiced:visible/too_much_ethanol