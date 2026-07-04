execute unless predicate spiced:sneaking run return run data modify storage spiced:temp c4t.response set value [{"translate":"spiced.c4t.flair.sliced_celery","fallback":"ERROR: RESOURCE PACK NOT ENABLED"},{text:"] [",color:gray,italic:false},{text:"Shift Right Click",color:gold,italic:false},{text:" to feed",color:gray,italic:false}]

data modify storage spiced:temp c4t.response set value {"translate":"spiced.c4t.flair.sliced_celery.eat","fallback":"ERROR: RESOURCE PACK NOT ENABLED"}
item modify entity @s weapon.mainhand spiced:remove_one
playsound entity.cat.eat neutral @s ~ ~ ~ 1 1