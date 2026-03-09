# for comprehensive comments, see the pumpkin pie page
execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "spiced.mortar_and_pestle"
data modify storage cnk:temp register.page_name set value "item.spiced.cajun_seasoning"
data modify storage cnk:temp register.recipe_icon_font set value "spiced:icons"

data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.spiced.rosemary", font:"spiced:icons"}, \
    {key:"item.spiced.thyme", font:"spiced:icons"}, \
    {key:"item.spiced.oregano", font:"spiced:icons"}, \
    {key:"item.spiced.majoram", font:"spiced:icons"}, \
    {key:"item.spiced.basil", font:"spiced:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function cnk:cookbook/pages/register