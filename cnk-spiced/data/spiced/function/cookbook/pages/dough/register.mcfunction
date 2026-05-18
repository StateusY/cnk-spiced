execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy

data modify storage spiced:temp register.tool set value "spiced.mixing_bowl"
data modify storage spiced:temp register.page_name set value "item.spiced.dough"
data modify storage spiced:temp register.recipe_icon_font set value "spiced.book:icons"
data modify storage spiced:temp register.ingredients set value [ \
    {key:"item.minecraft.wheat", font:"spiced.book:icons"}, \
    {key:"item.minecraft.water", font:"spiced.book:icons"}, \
]

data modify storage spiced:temp register.source set value {key:"spiced.source", font:"spiced.book:base"}

data modify storage spiced:temp register.dialog_function set value "spiced:cookbook/pages/dough/page"

function spiced:cookbook/pages/register