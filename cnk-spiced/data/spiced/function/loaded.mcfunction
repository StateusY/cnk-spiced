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

kill @e[tag=spiced.booth]
function spiced:smithed_booth/booth_summon_master
scoreboard objectives add mypack dummy

data remove storage iris:settings TargetEntities
data remove storage iris:settings Whitelist
data remove storage iris:settings Callback
data remove storage iris:settings Blacklist
data remove storage iris:settings MaxRecursionDepth
data merge storage iris:settings {TargetEntities:true,MaxRecursionDepth:20}

