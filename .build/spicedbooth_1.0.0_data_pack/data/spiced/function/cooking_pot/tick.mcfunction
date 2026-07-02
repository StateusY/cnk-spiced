function spiced:cooking_pot/effects/flame
scoreboard players add @s spiced.timer 1
execute if score @s spiced.timer matches 1 if block ~ ~-1 ~ minecraft:hopper[enabled=true] run data modify block ~ ~-1 ~ TransferCooldown set value 120
execute if score @s spiced.timer matches 50 run data modify block ~ ~ ~ TransferCooldown set value 1000
execute if score @s spiced.timer matches 50 run function spiced:cooking_pot/effects/idling
execute if score @s spiced.timer matches 50 run scoreboard players reset @s spiced.timer
execute if score @s spiced.cook_cooldown matches 1.. run return run scoreboard players remove @s spiced.cook_cooldown 1
execute unless items block ~ ~ ~ container.* * run return run execute if score @s spiced.cook_time matches 1.. run function spiced:cooking_pot/stop
data modify storage spiced:temp cooking_pot.Items set from block ~ ~ ~ Items
data remove storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {}}}].id
data modify storage spiced:temp unique_items_check set value []
data modify storage spiced:temp unique_items_check set from storage spiced:temp cooking_pot.Items
function spiced:cooking_pot/crafting/get_unique
execute if entity @s[tag=!spiced.stove] run function spiced:cooking_pot/cook
execute if score $cooking_pot_lock spiced.dummy matches 0 if score @s spiced.cook_time matches 1.. run function spiced:cooking_pot/stop
