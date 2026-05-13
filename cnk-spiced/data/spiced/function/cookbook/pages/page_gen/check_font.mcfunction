$data modify storage spiced:temp register.temp_font set value "$(font)"
$execute if data storage spiced:temp key_map.$(key) run data modify storage spiced:temp register.temp_font set from storage spiced:temp key_map.$(key)
$data modify storage spiced:temp key_map.$(key) set from storage spiced:temp register.temp_font