schedule function spiced:tick_100 100t replace

tag @e[type=minecraft:item_display,tag=spiced.crop,tag=spiced.ticking_crop] remove spiced.ticking_crop
execute at @a run tag @e[type=minecraft:item_display,tag=spiced.crop,tag=!spiced.ticking_crop,distance=..145] add spiced.ticking_crop