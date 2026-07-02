execute store result score $random_meow spiced.dummy run random value 1..6
scoreboard players operation $meow_loop spiced.dummy = $random_meow spiced.dummy
data modify storage spiced:temp c4t.meow_speak set value [""]
function spiced:summit_booth/extras/c4t/meow/text
title @s actionbar [{text: "<C4T>", color: "gold"}, {nbt: "c4t.response", storage: "spiced:temp", interpret: true, color: "white", italic: true}, {text: " - [Find the transation key]", color: "gray"}]
function spiced:summit_booth/extras/c4t/meow/sfx
