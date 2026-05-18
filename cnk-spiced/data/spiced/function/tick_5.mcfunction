schedule function spiced:tick_5 5t replace

execute as @e[type=minecraft:item_display,tag=spiced.base_wheat,tag=spiced.ticking_crop,predicate=!spiced:wheat_0] at @s run function spiced:crops/base_wheat
execute as @e[type=minecraft:item_display,tag=spiced.base_pumpkin,tag=spiced.ticking_crop,predicate=!spiced:pumpkin_0] at @s run function spiced:crops/base_pumpkin
execute as @e[type=minecraft:item_display,tag=spiced.base_propagule,tag=spiced.ticking_crop,predicate=!spiced:propagule_0] at @s run function spiced:crops/base_propagule