execute if score @s spiced.cookbook_buttons matches 1.. run function spiced:cookbook/buttons/switch
execute if score @s spiced.cookbook_references matches 1.. run function spiced:cookbook/references/main
execute if score @s spiced.use_book matches 1.. run function spiced:cookbook/use


execute if score @s spiced.get_water matches 1.. run function spiced:ingredients/water_fix

execute positioned 199 53 176 if entity @s[distance=..1,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/exit
execute positioned 223 57 180 if entity @s[distance=..3,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/enter
execute positioned 178 53 188 if entity @s[distance=..0.5,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/fountain/enter1
execute positioned 176 53 185 if entity @s[distance=..0.5,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/fountain/exit1
execute positioned 193 53 174 if entity @s[distance=..0.5,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/fountain/exit2
