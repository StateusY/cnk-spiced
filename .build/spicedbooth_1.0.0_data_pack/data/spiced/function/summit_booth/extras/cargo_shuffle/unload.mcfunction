execute if entity @a[tag=spiced.in_hull, distance=..7] run return fail
execute as @e[type=item_display, distance=..7, tag=summit.booth_entity.spiced, tag=spiced.cs_valid_bag] run function spiced:summit_booth/extras/cargo_shuffle/remove_bag
