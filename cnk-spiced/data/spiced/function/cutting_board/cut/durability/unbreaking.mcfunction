#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute store result score $unbreaking_chance spiced.dummy run random value 1..100
execute if entity @s[predicate=spiced:unbreaking/mainhand/3] if score $unbreaking_chance spiced.dummy matches ..75 run return 1
execute if entity @s[predicate=spiced:unbreaking/mainhand/2] if score $unbreaking_chance spiced.dummy matches ..66 run return 1
execute if entity @s[predicate=spiced:unbreaking/mainhand/1] if score $unbreaking_chance spiced.dummy matches ..50 run return 1
return fail