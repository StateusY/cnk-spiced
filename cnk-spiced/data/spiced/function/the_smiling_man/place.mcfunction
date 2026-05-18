setblock ~ ~ ~ minecraft:air

playsound minecraft:block.bamboo_wood.place block @a ~ ~ ~ 1 2

# data modify storage spiced:temp rotation set value 0
# execute if score $rotation spiced.dummy matches 1350..1800 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 0
# execute if score $rotation spiced.dummy matches -1800..-1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 0
# execute if score $rotation spiced.dummy matches -1350..-450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 90
# execute if score $rotation spiced.dummy matches -450..450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 180
# execute if score $rotation spiced.dummy matches 450..1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value -90
data modify storage spiced:temp rotation set value 0
execute store result storage spiced:temp rotation int 0.1 run scoreboard players get $rotation spiced.dummy

function spiced:the_smiling_man/macro with storage spiced:temp
scoreboard players set @n[type=minecraft:item_display,tag=spiced.the_smiling_man] spiced.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=spiced.the_smiling_man] spiced.hit_timer 0
scoreboard players set @n[type=minecraft:item_display,tag=spiced.the_smiling_man] spiced.item_count 0