data modify storage spiced:temp model set value "spiced:cooking_pot"
data modify storage spiced:temp extra_tags set value ",'spiced.default_pot'"

data remove storage spiced:temp place.cooking_pot.block
data modify storage spiced:temp place.cooking_pot.block set from storage spiced:temp block.data.components."minecraft:custom_data".spiced.block
execute if data storage spiced:temp place.cooking_pot.block.witch_cauldron run return run function spiced:cooking_pot/variants/witch_cauldron
execute if data storage spiced:temp place.cooking_pot.block.stove run return run function spiced:cooking_pot/variants/stove
execute if data storage spiced:temp place.cooking_pot.block.panless_stove run return run function spiced:cooking_pot/variants/panless_stove
execute if data storage spiced:temp place.cooking_pot.block.fizz_oven run return run function spiced:cooking_pot/variants/fizz_oven

playsound spiced:block.cooking_pot.idling block @a[distance=..6] ~ ~ ~ 0.2 1