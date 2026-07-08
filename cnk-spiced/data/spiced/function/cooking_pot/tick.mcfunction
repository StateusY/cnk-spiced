#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

particle minecraft:flame ~ ~-0.35 ~ 0.18 0.05 0.18 0 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:100}} run playsound spiced:block.cooking_pot.idling block @a[tag=summit.in_booth.spiced,distance=..6] ~ ~ ~ 0.4 1

execute if score @s spiced.cook_cooldown matches 1.. run return run scoreboard players remove @s spiced.cook_cooldown 1

# check if the container has items
execute unless items block ~ ~ ~ container.* * run return run execute if score @s spiced.cook_time matches 1.. run function spiced:cooking_pot/stop

# get items
data modify storage spiced:temp cooking_pot.Items set from block ~ ~ ~ Items

# increase idle time, clear cooking pot if idle for 2400 ticks (2 minutes)
execute unless score @s spiced.cook_time matches 1.. run scoreboard players add @s spiced.idle_time 1
execute if score @s spiced.idle_time matches 1200.. run return run function spiced:cooking_pot/clear

# kick out non-ingredient items
execute if data storage spiced:temp cooking_pot.Items[0] unless data storage spiced:temp cooking_pot.Items[0].components."minecraft:custom_data".spiced.ingredient.type run return run function spiced:cooking_pot/kick/1
execute if data storage spiced:temp cooking_pot.Items[1] unless data storage spiced:temp cooking_pot.Items[1].components."minecraft:custom_data".spiced.ingredient.type run return run function spiced:cooking_pot/kick/2
execute if data storage spiced:temp cooking_pot.Items[2] unless data storage spiced:temp cooking_pot.Items[2].components."minecraft:custom_data".spiced.ingredient.type run return run function spiced:cooking_pot/kick/3
execute if data storage spiced:temp cooking_pot.Items[3] unless data storage spiced:temp cooking_pot.Items[3].components."minecraft:custom_data".spiced.ingredient.type run return run function spiced:cooking_pot/kick/4
execute if data storage spiced:temp cooking_pot.Items[4] unless data storage spiced:temp cooking_pot.Items[4].components."minecraft:custom_data".spiced.ingredient.type run return run function spiced:cooking_pot/kick/5

# count items
data modify storage spiced:temp unique_items_check set from storage spiced:temp cooking_pot.Items
function spiced:cooking_pot/crafting/get_unique

scoreboard players set $cooking_pot_lock spiced.dummy 0
execute if score $unique_items spiced.dummy matches 1 run function spiced:cooking_pot/crafting/1
execute if score $unique_items spiced.dummy matches 2 run function spiced:cooking_pot/crafting/2
execute if score $unique_items spiced.dummy matches 3 run function spiced:cooking_pot/crafting/3
execute if score $unique_items spiced.dummy matches 4 run function spiced:cooking_pot/crafting/4
execute if score $unique_items spiced.dummy matches 5 run function spiced:cooking_pot/crafting/5

execute if score $cooking_pot_lock spiced.dummy matches 0 if score @s spiced.cook_time matches 1.. run function spiced:cooking_pot/stop