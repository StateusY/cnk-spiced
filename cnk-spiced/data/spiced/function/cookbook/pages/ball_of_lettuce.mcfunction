# for comprehensive comments, see the pumpkin pie page
execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy

data modify storage spiced:temp register.tool set value "spiced.mortar_and_pestle"
data modify storage spiced:temp register.page_name set value "item.spiced.ball_of_lettuce"
data modify storage spiced:temp register.recipe_icon_font set value "spiced:icons"

data modify storage spiced:temp register.ingredients set value [ \
    {key:"item.spiced.lettuce", font:"cnk.book:icons"}, \
    {key:"item.spiced.lettuce", font:"cnk.book:icons"}, \
    {key:"item.spiced.lettuce", font:"cnk.book:icons"}, \
    {key:"item.spiced.lettuce", font:"cnk.book:icons"}, \
    {key:"item.spiced.lettuce", font:"cnk.book:icons"}, \
]

data modify storage spiced:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function spiced:cookbook/pages/register