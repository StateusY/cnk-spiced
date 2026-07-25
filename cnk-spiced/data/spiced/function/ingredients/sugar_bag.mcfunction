function summit.items:api/count_items {custom_data:"{spiced: {ingredient:{type:'sugar'}}}", max:5}

execute if score $below_max summit.temp matches 0 run return fail
execute as @a[tag=summit.in_booth.spiced,distance=..15] run function spiced:ingredients/sfx/powder
loot give @s loot spiced:food/sugar