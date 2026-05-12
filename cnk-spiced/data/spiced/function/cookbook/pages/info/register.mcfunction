execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy
data modify storage spiced:temp register.page_name set value "info"
data modify storage spiced:temp register.dialog_function set value "spiced:cookbook/pages/info/page"
data modify storage spiced:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

function spiced:cookbook/pages/register