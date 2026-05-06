data modify storage spiced:temp cookbook.data.lectern_button set value " \
,{ \
    'label': {translate:'lectern.take_book'}, \
    'width': 105, \
    'action': { \
    'type': 'run_command', \
    'command': 'trigger spiced.cookbook_buttons set 9992' \
    } \
}"
data modify storage spiced:temp cookbook.data.button_width set value 105