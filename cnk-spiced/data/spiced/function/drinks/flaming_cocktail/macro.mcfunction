$loot $(give_or_spawn) loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "minecraft:splash_potion", \
          "functions": [ \
            { \
              "function": "minecraft:set_components", \
              "components": { \
                "minecraft:max_stack_size": 1, \
                "minecraft:item_name": {"translate":"item.spiced.flaming_cocktail","fallback":"Flaming Cocktail"}, \
                "minecraft:item_model": "spiced:flaming_cocktail", \
                "minecraft:potion_contents": { \
                  "custom_color": 7358282, \
                  "custom_name": "flaming_cocktail" \
                }, \
                "minecraft:tooltip_display": { \
                  "hidden_components": [ \
                    "minecraft:potion_contents" \
                  ] \
                }, \
                "minecraft:lore": [{"translate":"item.spiced.calendar.format","with":["$(year)","$(day)"],"color":"blue","italic":false},{"translate":"spiced.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
                "minecraft:custom_data": {"spiced":{"ingredient":{"type":"flaming_cocktail"},"wine":{"time":$(gametime),"color":$(color)}},"smithed":{"ignore":{"functionality":true,"crafting":true}}} \
              } \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}