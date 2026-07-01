execute store result score $random_meow spiced.dummy run random value 1..6

scoreboard players operation $meow_loop spiced.dummy = $random_meow spiced.dummy
data modify storage spiced:temp c4t.meow_speak set value [""]
function spiced:summit_booth/extras/c4t/meow/text
# tellraw @s [{text:" <C4T>"},{nbt:"c4t.meow_speak",storage:"spiced:temp",interpret:true}]
title @s actionbar [{text:"<C4T>", color:"gold"},{nbt:"c4t.meow_speak",storage:"spiced:temp",interpret:true, color:"white",italic:true},{text:" - [Find the transation key]",color:"gray"}]

function spiced:summit_booth/extras/c4t/meow/sfx