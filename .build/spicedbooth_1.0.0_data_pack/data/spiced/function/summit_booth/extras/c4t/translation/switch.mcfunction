data modify storage spiced:temp c4t.translation set value "empty"
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{spiced: {translation_key: true, type: "flair"}}] run data modify storage spiced:temp c4t.translation set value "flair"
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{spiced: {translation_key: true, type: "spite"}}] run data modify storage spiced:temp c4t.translation set value "spite"
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{spiced: {translation_key: true, type: "study"}}] run data modify storage spiced:temp c4t.translation set value "study"
execute if entity @s[advancements={spiced:c4t_translation_flair=true}] run loot replace entity @s weapon.mainhand loot spiced:other/translation_key_flair
execute if entity @s[advancements={spiced:c4t_translation_spite=true}] run loot replace entity @s weapon.mainhand loot spiced:other/translation_key_spite
execute if entity @s[advancements={spiced:c4t_translation_study=true}] run loot replace entity @s weapon.mainhand loot spiced:other/translation_key_study
advancement revoke @s only spiced:c4t_translation_flair
advancement revoke @s only spiced:c4t_translation_spite
advancement revoke @s only spiced:c4t_translation_study
execute if data storage spiced:temp c4t{translation: "flair"} run advancement grant @s only spiced:c4t_translation_flair
execute if data storage spiced:temp c4t{translation: "spite"} run advancement grant @s only spiced:c4t_translation_spite
execute if data storage spiced:temp c4t{translation: "study"} run advancement grant @s only spiced:c4t_translation_study
title @s actionbar [{text: "<C4T>", color: "gold"}, {text: " TRANSLATION KEY SWITCHED", color: "green"}]
playsound minecraft:block.respawn_anchor.charge neutral @s ~ ~ ~ 0.5 2
playsound minecraft:block.amethyst_block.place neutral @s ~ ~ ~ 1 1.5
playsound minecraft:item.lodestone_compass.lock neutral @s ~ ~ ~ 1 1
playsound minecraft:block.sculk_shrieker.place neutral @s ~ ~ ~ 1 1
