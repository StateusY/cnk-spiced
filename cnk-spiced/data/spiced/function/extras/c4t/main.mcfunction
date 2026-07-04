

# blank key warn
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true, "type":"blank"}}] run return run function spiced:extras/c4t/translation/blank

# if no keys enabled, then activate key
execute if items entity @s[advancements={spiced:c4t_translation_flair=false,spiced:c4t_translation_spite=false,spiced:c4t_translation_study=false}] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true}}] run return run function spiced:extras/c4t/translation/activate

# if key is not enabled, enable it
execute if items entity @s[advancements={spiced:c4t_translation_flair=false}] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true,"type":flair}}] run return run function spiced:extras/c4t/translation/switch
execute if items entity @s[advancements={spiced:c4t_translation_spite=false}] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true,"type":spite}}] run return run function spiced:extras/c4t/translation/switch
execute if items entity @s[advancements={spiced:c4t_translation_study=false}] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true,"type":study}}] run return run function spiced:extras/c4t/translation/switch

# if key is enabled, refuse it
execute if items entity @s[advancements={spiced:c4t_translation_flair=true}] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true,"type":flair}}] run return run function spiced:extras/c4t/translation/refuse
execute if items entity @s[advancements={spiced:c4t_translation_spite=true}] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true,"type":spite}}] run return run function spiced:extras/c4t/translation/refuse
execute if items entity @s[advancements={spiced:c4t_translation_study=true}] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"spiced":{"translation_key":true,"type":study}}] run return run function spiced:extras/c4t/translation/refuse

# if no key enabled, then meow
execute if entity @s[advancements={spiced:c4t_translation_flair=false,spiced:c4t_translation_spite=false,spiced:c4t_translation_study=false}] run return run function spiced:extras/c4t/translation/untranslated

# if key enabled, then speak
execute if entity @s[advancements={spiced:c4t_translation_flair=true}] run return run function spiced:extras/c4t/flavor_control/flair_main
execute if entity @s[advancements={spiced:c4t_translation_spite=true}] run return run function spiced:extras/c4t/flavor_control/spite_main
execute if entity @s[advancements={spiced:c4t_translation_study=true}] run return run function spiced:extras/c4t/flavor_control/study_main



# meow rowr [this food does not delight me]
# meow mew [yes the flesh demands more]
# purrr meow [give me more pie]
# raow uwu [i am sleepy]
# mew mew... MEOWWOWO [eh? whats that... NO KNIFE NOT EAT YUM YUM]
# meow meow mewo mew meow purr pur meow mew [I sit here as the days go by wondering about the people who walk below, searching, searching, searching for some purpose admist these digital dreams]
# what? you thought i could only meow, it's rather the contrary, you foolish mortal
# mew [happi sitting]
# meow purr [in the dwark twimes i only lives as an idea and an model, but now im a real cat! yay XOXO]
# meow mew [give me more food]
# meow mew [why are you so slow, MOREEEE]
# purr purr mew meow [uwu ya we have intonations and other thingies in meow-speak]


# eating fails
# wheat bottle blacl_pepper, cinnamon flour, bread, sliced_bread, cooking_oil, butter, huntsman_pie_incomplete_1, huntsman_pie_incomplete_2

# prompt feed
# milk, cinna_shake, chicken, diced_bread, sliced_ceelry, huntsman_pie


# demanding cat
# introspective cat


# huntsman pie story

# raof lettuce story

# lettuce
# ball of lettuce
# chunk of lettuce
# mass of lettuce
# pan of lettuce
# portion of lettuce


# insert translation