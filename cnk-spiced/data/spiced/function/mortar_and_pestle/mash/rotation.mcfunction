execute if score $mash_time spiced.dummy matches 1 run rotate @s ~120 ~
execute if score $mash_time spiced.dummy matches 7 run rotate @s ~120 ~
execute if score $mash_time spiced.dummy matches 13 run rotate @s ~120 ~

data modify storage spiced:temp mortar_and_pestle.id set from entity @s item.id
data modify storage spiced:temp mortar_and_pestle.components set value {}
data modify storage spiced:temp mortar_and_pestle.components set from entity @s item.components
function spiced:mortar_and_pestle/mash/particle with storage spiced:temp mortar_and_pestle