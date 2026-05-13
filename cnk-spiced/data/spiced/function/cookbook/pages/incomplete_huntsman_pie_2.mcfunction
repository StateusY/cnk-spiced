# for comprehensive comments, see the pumpkin pie page
execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy

data modify storage spiced:temp register.tool set value "spiced.cooking_pot"
data modify storage spiced:temp register.page_name set value "item.spiced.incomplete_huntsman_pie_2"
data modify storage spiced:temp register.recipe_icon_font set value "spiced:icons"

data modify storage spiced:temp register.ingredients set value [ \
    {key:"item.cnk.chicken_cutlets", font:"spiced:icons"}, \
    {key:"item.spiced.diced_bread", font:"spiced:icons"}, \
    {key:"item.spiced.incomplete_huntsman_pie_1", font:"spiced:icons"}, \
    {key:"item.spiced.ground_cinnamon", font:"spiced:icons"}, \
    {key:"item.cnk.pork_cutlets", font:"spiced:icons"}, \
]

data modify storage spiced:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function spiced:cookbook/pages/page_gen/register