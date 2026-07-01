execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"ingredient":{"type":onion}}}] run function spiced:summit_booth/extras/c4t/style_flair/onion

function spiced:summit_booth/extras/c4t/meow/sfx
title @s actionbar [{text:"<C4T>", color:"gold"}, {text:" [",color:"gray"},{nbt:"c4t.response", storage:"spiced:temp", interpret:true, color:"white",italic:true},{text:"]",color:"gray"}]