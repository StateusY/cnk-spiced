tag @s add spiced.entered_booth

title @s title [{text: "WELCOME TO ", "font":"spiced:tooltip", color:  "gold", italic: true},{"text":"C&K: Spiced\ub001\ua001","font":"spiced:tooltip","color":"white","italic":false}]
title @s subtitle [{text: "Brought to you by ", color:  "white"},{text: "Stateus", "font":"spiced:tooltip", color: "gold", bold: false, "italic":true},{text: " and "},{text: "Pan_Womsacz", "font":"spiced:tooltip", color: "gold", bold: false, "italic":true}]

advancement grant @s only summit.sticker_book:spiced/spiced_booth

playsound minecraft:item.goat_horn.sound.0 block @s ~ ~ ~ 1 1.5
# playsound minecraft:item.goat_horn.sound.1 block @s ~ ~ ~ 1 0.8

function spiced:extras/equip_player
