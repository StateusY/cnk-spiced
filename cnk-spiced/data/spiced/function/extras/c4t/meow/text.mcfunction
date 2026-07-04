execute store result score $random_meow spiced.dummy run random value 1..6

scoreboard players operation $meow_loop spiced.dummy = $random_meow spiced.dummy
data modify storage spiced:temp c4t.response set value [""]
function spiced:extras/c4t/meow/loop