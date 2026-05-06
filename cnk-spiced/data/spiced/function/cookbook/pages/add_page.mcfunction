$data modify storage spiced:cookbook pages.$(page_number) set from storage spiced:temp register
$data modify storage spiced:cookbook page_lookup."$(page_name)" set value $(page_number)

#advance global
scoreboard players add $global_cookbook_page spiced.dummy 1

#clear storage
data remove storage spiced:temp register