execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy

data modify storage spiced:temp register.tool set value "spiced.cooking_pot"
data modify storage spiced:temp register.page_name set value "item.spiced.huntsman_pie"
data modify storage spiced:temp register.recipe_icon_font set value "spiced:icons"

data modify storage spiced:temp register.ingredients set value [ \
    {key:"item.spiced.pastry_dough", font:"spiced:icons"}, \
    {key:"item.spiced.black_pepper", font:"spiced:icons"}, \
    {key:"item.spiced.huntsman_pie_incomplete_2", font:"spiced:icons"}, \
    {key:"item.minecraft.chicken", font:"spiced:icons"}, \
    {key:"item.minecraft.porkchop", font:"spiced:icons"}, \
]

data modify storage spiced:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function spiced:cookbook/pages/page_gen/register