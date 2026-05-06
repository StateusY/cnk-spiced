$data modify storage spiced:cookbook database.$(uid)."$(flag)" set value true

#validate that data was set
$execute if data storage spiced:cookbook database.$(uid)."$(flag)" run return run scoreboard players set $set_success spiced.dummy 1