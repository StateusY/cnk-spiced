$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.spiced.cookbook"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 211, \
      "contents": [{ \
            "translate":"book.spiced.2_recipe","font":"spiced:icons","shadow_color":0,"color":"white","with":[ \
                {"translate":item.spiced.stock,"color":"#7b613a","font":"minecraft:default"}, \
                {"translate":book.spiced.ingredient_template,with:[{"translate":book.item.spiced.any_meat,"font":"spiced:icons"}],"hover_event":{"action":"show_text","value":{"translate":item.spiced.any_meat}}}, \
                {"translate":book.spiced.ingredient_template,with:[{"translate":book.item.spiced.water,"font":"spiced:icons"}],"hover_event":{"action":"show_text","value":{"translate":item.spiced.water}}}, \
                {"translate":"book.spiced.cooking_pot"}, \
                {"translate":"book.item.spiced.stock","font":"spiced:icons"}, \
                {"translate":book.tab.spiced.front.idle,"hover_event":{"action":"show_text","value":{"text":"Front Page"}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9921"}}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.tab.spiced.filler}, \
                {"translate":book.spiced.stamp.none}, \
                {"translate":$(return)}, \
                {"translate":book.spiced.bottom_line,"with":[{"translate":book.spiced.page_number.$(page_number_width),"font":"spiced:small_text","with":[{"text":"$(current_page)","color":"#927359"}]}]}, \
                {"translate":book.spiced.cookbook_navigation,"with":[{"translate":book.spiced.previous_page,"hover_event":{"action":"show_text","value":{"translate":book.spiced.previous_page.hover}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9901"}},{"translate":book.spiced.empty_incomplete_recipe},{"translate":"book.spiced.source","font":"spiced:icons","hover_event":{"action":"show_text","value":{"translate":spiced.source}}},{"translate":book.spiced.empty_incomplete_recipe},{"translate":book.spiced.next_page,"hover_event":{"action":"show_text","value":{"translate":book.spiced.next_page.hover}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9902"}}]} \
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