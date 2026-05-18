advancement = """{
  \"parent\": \"spiced:cookbook/root\",
  \"criteria\": {
    \"requirement\": {
      \"trigger\": \"minecraft:inventory_changed\",
      \"conditions\": {
        \"items\": [
          {
            \"items\": \"minecraft:poisonous_potato\",
            \"components\": {
              \"minecraft:custom_data\": {\"please_fill_this_in\":true}
            }
          }
        ]
      }
    }
  },
  \"rewards\": {
    \"function\": \"%(namespace)s:cookbook/grant/%(name)s\"
  }
}
"""

toast = """{
  \"parent\": \"spiced:cookbook/toasts\",
  \"display\": {
    \"title\": [{\"translate\":\"book.spiced.toast.background\",\"font\":\"spiced:advancement\"},{\"translate\":\"book.spiced.toast.unlock.ingredient\",\"font\":\"spiced:advancement_text\",\"color\":\"#7b613a\"}],
    \"icon\": {
      \"id\": \"minecraft:poisonous_potato\",
      \"components\": {\"minecraft:item_model\": \"%(namespace)s:%(name)s\"}
    },
    \"description\": \"\",
    \"announce_to_chat\": false
  },
  \"criteria\": {
    \"requirement\": {
      \"trigger\": \"minecraft:impossible\"
    }
  }
}
"""

grant_flag = """function spiced:cookbook/database/set/main {flag:"%(type)s.%(namespace)s.%(name)s"}
execute if score $set_success spiced.dummy matches 0 run return run advancement revoke @s only spiced:cookbook/%(name)s/item

advancement grant @s[tag=!spiced.cookbook_unlock,tag=!spiced.no_toasts] only spiced:cookbook/%(name)s/toast"""

font = "{\n    \"providers\": [\n%(characters)s    ]\n}"

character = "        {\"type\":\"bitmap\",\"file\":\"%(namespace)s:icon/%(type)s/%(name)s.png\",\"ascent\":15,\"height\":16,\"chars\":[\"\\uc%(number)s\"]},\n"

lang = "{\n%(translations)s}"

ingredient_translation = "  \"book.%(type)s.%(namespace)s.%(name)s\": \"\\u%(number)s\",\n"