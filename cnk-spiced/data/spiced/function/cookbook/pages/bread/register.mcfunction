execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy

data modify storage spiced:temp register.tool set value "spiced.cooking_pot"
data modify storage spiced:temp register.page_name set value "item.minecraft.bread"
data modify storage spiced:temp register.recipe_icon_font set value "spiced.book:icons"
data modify storage spiced:temp register.ingredients set value [ \
    {key:"item.spiced.dough", font:"spiced.book:icons"}, \
]

data modify storage spiced:temp register.source set value {key:"spiced.source", font:"spiced.book:base"}

function spiced:cookbook/pages/register