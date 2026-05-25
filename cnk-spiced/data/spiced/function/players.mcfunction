execute unless score @s spiced.uid matches 0.. run function spiced:player_setup

execute if score @s spiced.use_book matches 1.. run function spiced:cookbook/check

execute if score @s spiced.cookbook_buttons matches 1.. run function spiced:cookbook/buttons/switch