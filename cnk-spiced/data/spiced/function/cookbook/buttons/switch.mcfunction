# value map:
# 9901 = previous page
# 9902 = next page
# 9903 = previous incomplete recipe
# 9904 = next incomplete recipe
# 9911 = reference 1
# 9912 = reference 2
# 9913 = reference 3
# 9914 = reference 4
# 9915 = reference 5
# 9921 = front bookmark
# 9922 = staple bookmark [CUT]
# 9923 = snack bookmark [CUT]
# 9924 = light bookmark [CUT]
# 9925 = hearty bookmark [CUT]
# 9926 = feast bookmark [CUT]
# 9927 = dessert bookmark [CUT]
# 9931 = return
# 9991 = close dialog
# 9992 = take book

execute if score @s spiced.cookbook_buttons matches 9901 run function spiced:cookbook/buttons/previous_page
execute if score @s spiced.cookbook_buttons matches 9902 run function spiced:cookbook/buttons/next_page

execute if score @s spiced.cookbook_buttons matches 9921 run function spiced:cookbook/buttons/front_bookmark

execute if score @s spiced.cookbook_buttons matches 9931 run function spiced:cookbook/buttons/return

execute if score @s spiced.cookbook_buttons matches 9991 run function spiced:cookbook/buttons/close

scoreboard players reset @s spiced.cookbook_buttons
scoreboard players enable @s spiced.cookbook_buttons