execute unless predicate spiced:sneaking run return run data modify storage spiced:temp c4t.response set value {"translate":"spiced.c4t.flair.sunflower_snippet","fallback":"ERROR: RESOURCE PACK NOT ENABLED"}

data modify storage spiced:temp c4t.response set value {"translate":"spiced.c4t.flair.sunflower_snippet.eat","fallback":"ERROR: RESOURCE PACK NOT ENABLED"}
item modify entity @s weapon.mainhand spiced:remove_one
playsound entity.cat.eat neutral @s ~ ~ ~ 1 1