data remove storage spiced:temp distiller.slot
data modify storage spiced:temp distiller.slot set from storage spiced:temp distiller.Items[{components:{"minecraft:custom_data":{spiced:{wine:{}}}}}].Slot
execute if data storage spiced:temp distiller.slot run function spiced:recipes/remove with storage spiced:temp distiller
execute if data storage spiced:temp distiller.slot run data modify storage spiced:temp distiller.byproduct.item set value "spiced:other/glass_bottle"
execute if data storage spiced:temp distiller.slot at @s run return run function spiced:recipes/distiller/generic/macro with storage spiced:temp distiller.byproduct