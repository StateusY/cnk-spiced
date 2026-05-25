function spiced:recipes/remove_generic/meat

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:spider_eye"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:bone"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

loot spawn ~ ~0.25 ~ loot spiced:food/dead_meat

playsound minecraft:block.trial_spawner.ambient_ominous block @a[distance=..6] ~ ~ ~ 1 2
playsound spiced:block.cooking_pot.finished block @a[distance=..6] ~ ~ ~ 0.4 1
particle minecraft:large_smoke ~ ~0.3 ~ 0.1 0.1 0.1 0 10
particle minecraft:trial_spawner_detection_ominous ~ ~0.3 ~ 0.16 0.16 0.16 0 30
data modify entity @s item.components."minecraft:item_model" set value "spiced:cooking_pot_open"

scoreboard players reset @s spiced.cook_time
scoreboard players set @s spiced.cook_cooldown 15