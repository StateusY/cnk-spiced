# for comprehensive comments, see the pumpkin pie page
execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.cooking_pot"
data modify storage cnk:temp register.page_name set value "item.cnk.fries"
data modify storage cnk:temp register.recipe_icon_font set value "spiced:icons"

data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.spiced.salt", font:"spiced:icons"}, \
    {key:"item.spiced.sliced_potato", font:"spiced:icons"}, \
    {key:"item.cnk.cooking_oil", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function cnk:cookbook/pages/register