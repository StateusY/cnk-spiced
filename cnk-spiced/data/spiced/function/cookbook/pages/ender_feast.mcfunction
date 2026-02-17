execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.cooking_pot"
data modify storage cnk:temp register.page_name set value "item.spiced.ender_feast"
data modify storage cnk:temp register.recipe_icon_font set value "spiced:icons"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.minecraft.shulker_shell", font:"spiced:icons"}, \
    {key:"item.minecraft.ender_pearl", font:"spiced:icons"}, \
    {key:"item.minecraft.chorus_fruit", font:"cnk.book:icons"}, \
    {key:"item.cnk.rice", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function cnk:cookbook/pages/register