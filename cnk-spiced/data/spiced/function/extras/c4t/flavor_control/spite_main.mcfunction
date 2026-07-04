tag @s add spiced.c4t_translate
function spiced:extras/c4t/flavor_control/spite_switch
function spiced:extras/c4t/meow/sfx
execute if entity @s[tag=!spiced.c4t_translate] run return run title @s actionbar [{text:"<C4T>", color:"gold"},{nbt:"c4t.response",storage:"spiced:temp",interpret:true, color:"white",italic:true}]
title @s actionbar [{text:"<C4T>", color:"gold"}, {text:" [",color:"gray"},{nbt:"c4t.response", storage:"spiced:temp", interpret:true, color:"white",italic:true},{text:"]",color:"gray"}]

tag @s remove spiced.c4t_translate