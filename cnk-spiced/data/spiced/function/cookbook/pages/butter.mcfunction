# for comprehensive comments, see the pumpkin pie page
execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy

data modify storage spiced:temp register.tool set value "spiced.mixing_bowl"
data modify storage spiced:temp register.page_name set value "item.cnk.butter"
data modify storage spiced:temp register.recipe_icon_font set value "spiced:icons"

data modify storage spiced:temp register.ingredients set value [ \
    {key:"item.cnk.milk_bottle", font:"spiced:icons"}, \
]

data modify storage spiced:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function spiced:cookbook/pages/page_gen/register