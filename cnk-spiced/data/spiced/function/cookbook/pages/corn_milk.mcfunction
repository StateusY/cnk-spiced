execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "spiced.mortar_and_pestle"
data modify storage cnk:temp register.page_name set value "item.spiced.corn_milk"
data modify storage cnk:temp register.recipe_icon_font set value "spiced:icons"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.cnk.corn", font:"cnk.book:icons"}, \
    {key:"item.cnk.milk_bottle", font:"cnk.book:icons"}, \
    {key:"item.minecraft.sugar", font:"cnk.book:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function cnk:cookbook/pages/register