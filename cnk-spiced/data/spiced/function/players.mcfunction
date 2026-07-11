execute if score @s spiced.use_book matches 1.. run function spiced:cookbook/check
execute if score @s spiced.cookbook_buttons matches 1.. run function spiced:cookbook/buttons/switch
execute if score @s spiced.get_water matches 1.. run function spiced:ingredients/water_fix
execute if entity @s[advancements={spiced:npcs/blue=true,spiced:npcs/c4t=true,spiced:npcs/vault_emma=true,spiced:npcs/mantis=true,spiced:npcs/pan=true,spiced:npcs/stateus=true}] run advancement grant @s only summit.sticker_book:spiced/c4t_talking

execute positioned 199 53 176 if entity @s[distance=..1,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/exit
execute positioned 223 57 180 if entity @s[distance=..3,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/enter
execute positioned 178 53 188 if entity @s[distance=..0.5,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/fountain/enter1
execute positioned 176 53 185 if entity @s[distance=..0.5,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/fountain/exit1
execute positioned 193 53 174 if entity @s[distance=..0.5,gamemode=!creative,gamemode=!spectator] run return run function spiced:bounds/cellar/fountain/exit2
