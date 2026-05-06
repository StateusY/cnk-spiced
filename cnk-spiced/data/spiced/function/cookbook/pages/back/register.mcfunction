execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy
data modify storage spiced:temp register.page_name set value "back"
data modify storage spiced:temp register.dialog_function set value "spiced:cookbook/pages/back/page"

function spiced:cookbook/pages/register