execute unless predicate spiced:sneaking run return run data modify storage spiced:temp c4t.response set value {"translate":"spiced.c4t.spite.eggs","fallback":"ERROR: RESOURCE PACK NOT ENABLED"}

data modify storage spiced:temp c4t.response set value {"translate":"spiced.c4t.spite.eggs.eat","fallback":"ERROR: RESOURCE PACK NOT ENABLED"}
item modify entity @s weapon.mainhand spiced:remove_one
playsound entity.cat.eat neutral @s ~ ~ ~ 1 1