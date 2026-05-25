tellraw @a [{"translate":"spiced.tooltip","font":"spiced:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":spiced.loaded,"font":"minecraft:default"}]

scoreboard objectives add spiced.mash_time dummy
scoreboard objectives add spiced.prepare_time dummy
scoreboard objectives add spiced.grind_time dummy

scoreboard objectives add spiced.hit_count dummy
scoreboard objectives add spiced.hit_timer dummy

scoreboard objectives add spiced.item_count dummy
scoreboard objectives add spiced.mix_time dummy
scoreboard objectives add spiced.rotation dummy

# general use constants
scoreboard objectives add spiced.constant dummy
scoreboard objectives add spiced.dummy dummy
scoreboard players set $1 spiced.constant 1
scoreboard players set $1000 spiced.constant 1000

kill @e[tag=summit.booth_entity.spiced]
function spiced:summit_booth/booth_summon_master
scoreboard objectives add mypack dummy
function spiced:cookbook/register_pages

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

function spiced:tick_2

#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

