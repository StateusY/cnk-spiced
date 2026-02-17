execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.cooking_pot"
data modify storage cnk:temp register.page_name set value "item.spiced.crayon"
data modify storage cnk:temp register.recipe_icon_font set value "spiced:icons"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.cnk.any_dye", font:"cnk.book:icons"}, \
    {key:"item.minecraft.honeycomb", font:"spiced:icons"}, \
    {key:"item.minecraft.clay_ball", font:"spiced:icons"}, \
    {key:"item.minecraft.paper", font:"spiced:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function cnk:cookbook/pages/register