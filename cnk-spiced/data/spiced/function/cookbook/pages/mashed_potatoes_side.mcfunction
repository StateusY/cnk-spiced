# for comprehensive comments, see the pumpkin pie page
execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "spiced.preparation_plate"
data modify storage cnk:temp register.page_name set value "item.spiced.mashed_potatoes_side"
data modify storage cnk:temp register.recipe_icon_font set value "spiced:icons"

data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.minecraft.bowl", font:"spiced:icons"}, \
    {key:"item.spiced.mashed_potatoes", font:"spiced:icons"}, \
    {key:"item.spiced.parsley", font:"spiced:icons"}, \
    {key:"item.spiced.salt", font:"spiced:icons"}, \
]

data modify storage cnk:temp register.stamp set value { \
    icon:"book.cnk.stamp.plateable.icon", \
    text:"book.cnk.stamp.plateable.text" \
}

data modify storage cnk:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function cnk:cookbook/pages/register