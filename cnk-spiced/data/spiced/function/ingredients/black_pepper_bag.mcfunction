function summit.items:api/count_items {custom_data:"{spiced: {ingredient:{type:'black_pepper'}}}", max:5}

execute if score $below_max summit.temp matches 0 run return run title @s actionbar {text: "You can't carry anymore of these!", color:  "red"}
execute as @a[tag=summit.in_booth.spiced,distance=..15] run function spiced:ingredients/sfx/black_pepper
loot give @s loot spiced:food/black_pepper
