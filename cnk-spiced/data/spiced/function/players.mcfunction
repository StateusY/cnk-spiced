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