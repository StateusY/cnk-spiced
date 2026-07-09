execute if score @s spiced.use_book matches 1.. run function spiced:cookbook/check
execute if score @s spiced.cookbook_buttons matches 1.. run function spiced:cookbook/buttons/switch
execute if score @s spiced.get_water matches 1.. run function spiced:ingredients/water_fix
execute if entity @s[advancements={\
    spiced:npcs/blue/1=true,spiced:npcs/blue/2=true,spiced:npcs/blue/3=true,spiced:npcs/blue/4=true,\
    spiced:npcs/c4t/1=true,spiced:npcs/c4t/2=true,spiced:npcs/c4t/3=true,spiced:npcs/c4t/4=true,\
    spiced:npcs/emma_vault/1=true,\
    spiced:npcs/mantis/1=true,spiced:npcs/mantis/2=true,spiced:npcs/mantis/3=true,spiced:npcs/mantis/4=true,spiced:npcs/mantis/5=true,spiced:npcs/mantis/6=true,\
    spiced:npcs/pan/1=true,spiced:npcs/pan/2=true,spiced:npcs/pan/3=true,spiced:npcs/pan/4=true,spiced:npcs/pan/5=true,spiced:npcs/pan/6=true,\
    spiced:npcs/stateus/1=true,spiced:npcs/stateus/2=true,spiced:npcs/stateus/3=true,spiced:npcs/stateus/4=true,spiced:npcs/stateus/5=true,spiced:npcs/stateus/6=true,spiced:npcs/stateus/7=true,spiced:npcs/stateus/8=true,spiced:npcs/stateus/9=true,spiced:npcs/stateus/10=true,spiced:npcs/stateus/11=true\
}] run advancement grant @s only summit.sticker_book:spiced/c4t_talking

execute positioned 199 53 176 if entity @s[distance=..1,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/exit
execute positioned 223 57 180 if entity @s[distance=..3,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/enter
execute positioned 178 53 188 if entity @s[distance=..0.5,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/fountain/enter1
execute positioned 176 53 185 if entity @s[distance=..0.5,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/fountain/exit1
execute positioned 193 53 174 if entity @s[distance=..0.5,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/fountain/exit2
