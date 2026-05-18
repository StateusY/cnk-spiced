$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.spiced.cookbook"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 211, \
      "contents": [{ \
            "translate":"book.spiced.dough_recipe","font":"spiced.book:base","shadow_color":0,"color":"white","with":[ \
                {"translate":$(page_name),"color":"#7b613a","font":"minecraft:default"}, \
                {"translate":book.spiced.ingredient_template,with:[{"translate":book.$(slot_1),"font":"$(font_1)"}],"hover_event":{"action":"show_text","value":{"translate":$(slot_1)}}}, \
                {"translate":book.spiced.ingredient_template,with:[{"translate":book.$(slot_2),"font":"$(font_2)"}],"hover_event":{"action":"show_text","value":{"translate":$(slot_2)}}}, \
                {"translate":book.note.$(page_name),"font":"spiced.book:base"}, \
                {"translate":"book.spiced.mixing_bowl"}, \
                {"translate":"book.$(page_name)","font":"$(recipe_icon_font)"}, \
                {"translate":book.tab.spiced.front.$(front_state),"hover_event":{"action":"show_text","value":{"translate":book.spiced.section.front}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9921"}}, \
                {"translate":book.tab.spiced.staple.$(staple_state),"hover_event":{"action":"show_text","value":{"translate":book.spiced.section.staple}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9922"}}, \
                {"translate":book.tab.spiced.snack.$(snack_state),"hover_event":{"action":"show_text","value":{"translate":book.spiced.section.snack}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9923"}}, \
                {"translate":book.tab.spiced.light.$(light_state),"hover_event":{"action":"show_text","value":{"translate":book.spiced.section.light}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9924"}}, \
                {"translate":book.tab.spiced.hearty.$(hearty_state),"hover_event":{"action":"show_text","value":{"translate":book.spiced.section.hearty}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9925"}}, \
                {"translate":book.tab.spiced.feast.$(feast_state),"hover_event":{"action":"show_text","value":{"translate":book.spiced.section.feast}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9926"}}, \
                {"translate":book.tab.spiced.dessert.$(dessert_state),"hover_event":{"action":"show_text","value":{"translate":book.spiced.section.dessert}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9927"}}, \
                {"translate":$(stamp)}, \
                {"translate":$(return)}, \
                {"translate":book.spiced.bottom_line,"with":[{"translate":book.spiced.page_number.$(page_number_width),"font":"spiced.book:small_text","with":[{"text":"$(current_page)","color":"#927359"}]}]}, \
                {"translate":book.spiced.cookbook_navigation,"with":[{"translate":book.spiced.previous_page,"hover_event":{"action":"show_text","value":{"translate":book.spiced.previous_page.hover}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9901"}},{"translate":$(previous_incomplete_recipe)},{"translate":book.$(source_key),"font":"$(source_font)","hover_event":{"action":"show_text","value":{"translate":$(source_key)}}},{"translate":$(next_incomplete_recipe)},{"translate":book.spiced.next_page,"hover_event":{"action":"show_text","value":{"translate":book.spiced.next_page.hover}},"click_event":{"action":"run_command","command":"trigger spiced.cookbook_buttons set 9902"}}]} \
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