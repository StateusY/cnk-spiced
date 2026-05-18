function gu:convert with entity @p[tag=spiced.interact_mixing_bowl,distance=..20]
data modify entity @s data.spiced.last_interact_uuid set from storage gu:main out

function spiced:mixing_bowl/mix/get_items
function #spiced:recipes/mixing_bowl