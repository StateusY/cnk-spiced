# tellraw @a[tag=summit.in_booth.spiced] [{"translate":"spiced.tooltip","font":"spiced:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":spiced.loaded,"font":"minecraft:default"}]

# blocks
scoreboard objectives add spiced.timer dummy
scoreboard objectives add spiced.cook_cooldown dummy
scoreboard objectives add spiced.cook_time dummy
scoreboard objectives add spiced.idle_time dummy

scoreboard objectives add spiced.item_count dummy
scoreboard objectives add spiced.rotation dummy
scoreboard objectives add spiced.mix_time dummy
scoreboard objectives add spiced.mash_time dummy

# water
scoreboard objectives add spiced.get_water minecraft.used:minecraft.glass_bottle

# book
scoreboard objectives add spiced.uid dummy
scoreboard objectives add spiced.use_book minecraft.used:minecraft.written_book
scoreboard objectives add spiced.cookbook_buttons trigger
scoreboard objectives add spiced.cookbook_current_page dummy
scoreboard objectives add spiced.cookbook_previous_page dummy
scoreboard objectives add spiced.previous_incomplete_recipe dummy
scoreboard objectives add spiced.next_incomplete_recipe dummy

# general use constants
scoreboard objectives add spiced.dummy dummy
scoreboard objectives add mcb.internal dummy
scoreboard objectives add spiced.constant dummy
scoreboard players set $1 spiced.constant 1
scoreboard players set $16 spiced.constant 16
scoreboard players set $64 spiced.constant 64
scoreboard players set $729 spiced.constant 729

function spiced:teardown
function spiced:setup
