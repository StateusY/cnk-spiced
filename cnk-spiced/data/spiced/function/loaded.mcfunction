tellraw @a [{"translate":"spiced.tooltip","font":"spiced:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":cnk.loaded,"font":"minecraft:default"}]

scoreboard objectives add spiced.mash_time dummy
scoreboard objectives add spiced.prepare_time dummy
scoreboard objectives add spiced.grind_time dummy
scoreboard objectives add spiced.flaming_cocktail minecraft.used:minecraft.splash_potion

scoreboard objectives add spiced.ethanol_drunk dummy


# general use constants
scoreboard objectives add spiced.constant dummy
scoreboard players set $1 spiced.constant 1
scoreboard players set $1000 spiced.constant 1000