# BOOOM!

summon vex ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["spiced.flaming_explosion","cnk.entity"],equipment:{chest:{id:"minecraft:cobblestone",count:1,components:{"minecraft:enchantments":{"spiced:technical/flaming":1}}}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:false}]}
execute as @e[type=vex,tag=spiced.flaming_explosion] run kill @s

kill @s