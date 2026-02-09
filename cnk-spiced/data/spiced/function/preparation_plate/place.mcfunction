setblock ~ ~ ~ minecraft:air

playsound minecraft:block.bamboo_wood.place block @a ~ ~ ~ 1 2

data modify storage spiced:temp rotation set value 0
execute if score $rotation cnk.dummy matches 1350..1800 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -1800..-1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -1350..-450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches -450..450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 90
execute if score $rotation cnk.dummy matches 450..1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180

function spiced:preparation_plate/macro with storage cnk:temp
scoreboard players set @n[type=minecraft:item_display,tag=spiced.preparation_plate] cnk.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=spiced.preparation_plate] cnk.hit_timer 0
scoreboard players set @n[type=minecraft:item_display,tag=spiced.preparation_plate] cnk.item_count 0
scoreboard players set @n[type=minecraft:item_display,tag=spiced.preparation_plate] spiced.prepare_time 0