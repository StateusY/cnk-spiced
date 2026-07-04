execute if entity @a[tag=spiced.in_hull,distance=..7] run return fail

# execute as @e[type=item_display, distance=..7, tag=summit.booth_entity.spiced, tag=spiced.cs_valid_bag] run function spiced:extras/cargo_shuffle/remove_bag
function spiced:placements/shuffling_bags
execute as @e[type=item_display, distance=..7, tag=summit.booth_entity.spiced, tag=spiced.cs_valid_bag, tag=!spiced.cs_filled_bag, limit=1, sort=random] run function spiced:extras/cargo_shuffle/salt
execute as @e[type=item_display, distance=..7, tag=summit.booth_entity.spiced, tag=spiced.cs_valid_bag, tag=!spiced.cs_filled_bag, limit=1, sort=random] run function spiced:extras/cargo_shuffle/cinnamon
execute as @e[type=item_display, distance=..7, tag=summit.booth_entity.spiced, tag=spiced.cs_valid_bag, tag=!spiced.cs_filled_bag, limit=1, sort=random] run function spiced:extras/cargo_shuffle/black_pepper