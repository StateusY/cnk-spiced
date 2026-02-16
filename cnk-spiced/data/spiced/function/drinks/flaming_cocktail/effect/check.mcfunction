scoreboard players set @s spiced.flaming_cocktail 0

tag @s add spiced.flaming_cocktail_throw
execute as @n[type=minecraft:splash_potion,distance=..10,nbt={Item:{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"flaming_cocktail"}},smithed:{ignore:{functionality:true,crafting:true}}}}}}] at @s run function spiced:drinks/flaming_cocktail/effect/setup
tag @s remove spiced.flaming_cocktail_throw