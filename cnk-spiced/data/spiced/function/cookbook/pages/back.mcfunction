dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.spiced.cookbook"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 211, \
      "contents": [{ \
            "translate":"book.spiced.back_page","font":"spiced:icons","shadow_color":0,"color":"white","with":[ \
                {"translate":book.tab.spiced.front.idle,"hover_event":{"action":"show_text","value":{"translate":spiced.section.front}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9921"}}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.spiced.cookbook_back_navigation,"with":[{"translate":book.spiced.previous_page,"hover_event":{"action":"show_text","value":{"translate":book.spiced.previous_page.hover}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9901"}},{"translate":book.spiced.empty_incomplete_recipe}]} \
            ] \
        }] \
    }, \
    { \
      "type": "minecraft:plain_message", \
      "width": 1, \
      "contents": [{"text":""}] \
    } \
  ], \
  "inputs": [], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none", \
  "actions": [ \
    { \
      "label": {translate:"gui.done"}, \
      "width": 211, \
      "action": { \
        "type": "run_command", \
        "command": "trigger spiced.cookbook_buttons set 9991" \
      } \
    } \
  ] \
}