function gu:convert with entity @p[tag=spiced.interact_mortar_and_pestle,distance=..20,limit=1]
data modify entity @s data.spiced.last_interact_uuid set from storage gu:main out
data modify storage spiced:temp mortar_and_pestle.uuid set from entity @s data.spiced.last_interact_uuid

function spiced:extras/unreasonable_main with storage spiced:temp mortar_and_pestle