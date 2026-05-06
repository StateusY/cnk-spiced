tellraw @a [{"translate":"spiced.tooltip","font":"spiced:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":cnk.loaded,"font":"minecraft:default"}]

scoreboard objectives add spiced.mash_time dummy
scoreboard objectives add spiced.prepare_time dummy
scoreboard objectives add spiced.grind_time dummy
scoreboard objectives add spiced.flaming_cocktail minecraft.used:minecraft.splash_potion

scoreboard objectives add spiced.ethanol_drunk dummy


# general use constants
scoreboard objectives add spiced.constant dummy
scoreboard objectives add spiced.dummy dummy
scoreboard players set $1 spiced.constant 1
scoreboard players set $1000 spiced.constant 1000

kill @e[tag=spiced.booth]
function spiced:summit_booth/booth_summon_master
scoreboard objectives add mypack dummy
function spiced:cookbook/register_pages
data remove storage iris:settings TargetEntities
data remove storage iris:settings Whitelist
data remove storage iris:settings Callback
data remove storage iris:settings Blacklist
data remove storage iris:settings MaxRecursionDepth
data merge storage iris:settings {TargetEntities:true,MaxRecursionDepth:20}

# book
scoreboard objectives add spiced.use_book minecraft.used:minecraft.written_book
scoreboard objectives add spiced.cookbook_buttons trigger

scoreboard objectives add spiced.cookbook_current_page dummy
scoreboard objectives add spiced.cookbook_previous_page dummy

scoreboard objectives add spiced.previous_incomplete_recipe dummy
scoreboard objectives add spiced.next_incomplete_recipe dummy

scoreboard objectives add spiced.uid dummy
scoreboard objectives add spiced.settings trigger
scoreboard objectives add spiced.use_lectern minecraft.custom:minecraft.interact_with_lectern

#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

