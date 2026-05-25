# you're not supposed to be here
loot spawn ~ ~-0.3 ~ loot spiced:zzz_secret/meat_guide
particle minecraft:large_smoke ~ ~-0.1 ~ 0.18 0.1 0.18 0 5 force
particle minecraft:trial_spawner_detection_ominous ~ ~-0.1 ~ 0.18 0.1 0.18 0 10
playsound minecraft:block.trial_spawner.ambient_ominous block @a ~ ~ ~ 1 2

tellraw @p[tag=spiced.interact_cutting_board,predicate=spiced:ritual_dagger,distance=..20] {translate:spiced.meat_guide.hint, color:"gray", italic:true}
item replace entity @p[tag=spiced.interact_cutting_board,predicate=spiced:ritual_dagger,distance=..20] weapon.mainhand with minecraft:air

function spiced:cutting_board/cut/finish