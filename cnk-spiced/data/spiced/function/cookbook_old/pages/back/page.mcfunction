#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"text":"The Craft of Cooking"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 211, \
      "contents": [{ \
            "translate":"book.spiced.back_page","font":"spiced:icons","shadow_color":0,"color":"white","with":[ \
                {"translate":book.tab.spiced.front.$(front_state),"font":"spiced:icons","hover_event":{"action":"show_text","value":{"text":"Front Page"}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9921"}}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.spiced.cookbook_back_navigation,"with":[{"translate":book.spiced.previous_page,"hover_event":{"action":"show_text","value":{"text":"Previous page"}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9901"}},{"translate":$(previous_incomplete_recipe)}]} \
            ] \
        }] \
    }, \
    { \
      "type": "minecraft:plain_message", \
      "width": 1, \
      "contents": [{"text":"\n"}] \
    } \
  ], \
  "inputs": [], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none", \
  "actions": [ \
    { \
      "label": {translate:"gui.done"}, \
      "width": $(button_width), \
      "action": { \
        "type": "run_command", \
        "command": "trigger spiced.cookbook_buttons set 9991" \
      } \
    } \
    $(lectern_button) \
  ] \
}