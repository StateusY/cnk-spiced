execute if entity @s[tag=spiced.mecha_pumpkin_missile] on vehicle run function spiced:mecha_scarecrow/entity/missile/tick

execute if entity @s[predicate=cnk:vehicle] run return fail
execute if entity @s[tag=spiced.flaming_cocktail_marker] run function spiced:drinks/flaming_cocktail/effect/explode