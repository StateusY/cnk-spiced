playsound minecraft:block.iron.place block @a ~ ~ ~ 1 1

data modify storage spiced:temp rotation set value 0
execute if score $rotation spiced.dummy matches 1350..1800 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 180
execute if score $rotation spiced.dummy matches -1800..-1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 180
execute if score $rotation spiced.dummy matches -1350..-450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value -90
execute if score $rotation spiced.dummy matches -450..450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 0
execute if score $rotation spiced.dummy matches 450..1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage spiced:temp rotation set value 90

# handle variants
function spiced:cooking_pot/variants/main

function spiced:cooking_pot/macro with storage spiced:temp

setblock ~ ~ ~ minecraft:hopper[facing=down,enabled=false]{CustomName:{translate:gui.spiced.cooking_pot,font:"spiced:gui",color:"white"},TransferCooldown:1000} replace