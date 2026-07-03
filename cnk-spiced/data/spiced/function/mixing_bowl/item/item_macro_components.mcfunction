#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$loot give @p[tag=spiced.interact_mixing_bowl,distance=..20] loot {\
  "pools": [\
    {\
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "$(id)", \
          "functions": [ \
            { \
              "function": "minecraft:set_components", \
              "components": $(components) \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}