execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy
data modify storage spiced:temp register.tool set value "spiced.mixing_bowl"
data modify storage spiced:temp register.page_name set value "item.spiced.pastry_dough"
data modify storage spiced:temp register.recipe_icon_font set value "spiced:icons"
data modify storage spiced:temp register.ingredients set value [{key: "item.spiced.egg", font: "spiced:icons"}, {key: "item.spiced.flour", font: "spiced:icons"}, {key: "item.spiced.butter", font: "spiced:icons"}, {key: "item.spiced.salt", font: "spiced:icons"}]
data modify storage spiced:temp register.source set value {key: "spiced.source", font: "spiced:icons"}
function spiced:cookbook/pages/page_gen/register
