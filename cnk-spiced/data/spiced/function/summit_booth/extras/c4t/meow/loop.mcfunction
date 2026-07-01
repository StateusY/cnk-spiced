execute if score $meow_loop spiced.dummy < $1 spiced.constant run return fail
scoreboard players remove $meow_loop spiced.dummy 1

execute store result score $random_meow spiced.dummy run random value 1..15

execute if score $random_meow spiced.dummy matches 1..6 run data modify storage spiced:temp c4t.meow_speak append value " meow"
execute if score $random_meow spiced.dummy matches 7..12 run data modify storage spiced:temp c4t.meow_speak append value " mew"
execute if score $random_meow spiced.dummy matches 13..14 run data modify storage spiced:temp c4t.meow_speak append value " purr"
execute if score $random_meow spiced.dummy matches 15 run data modify storage spiced:temp c4t.meow_speak append value " rowr"

function spiced:summit_booth/extras/c4t/meow/loop