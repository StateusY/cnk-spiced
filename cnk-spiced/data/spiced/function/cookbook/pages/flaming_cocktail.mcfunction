# for comprehensive comments, see the pumpkin pie page
execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.cooking_pot"
data modify storage cnk:temp register.page_name set value "item.spiced.flaming_cocktail"
data modify storage cnk:temp register.recipe_icon_font set value "spiced:icons"

data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.spiced.ethanol", font:"spiced:icons"}, \
    {key:"item.cnk.cooking_oil", font:"cnk:book:icons"}, \
    {key:"block.minecraft.paper", font:"spiced:icons"}, \
    {key:"item.minecraft.blaze_powder", font:"spiced:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function cnk:cookbook/pages/register