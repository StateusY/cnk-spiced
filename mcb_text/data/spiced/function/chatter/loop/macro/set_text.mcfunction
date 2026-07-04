# Generated with MC-Build

say set_text
$function $(soundFunction)
data modify storage spiced:chatter "$(id)".text append from storage spiced:chatter "$(id)".args.message[0]
data remove storage spiced:chatter "$(id)".args.message[0]
data modify entity @s text set from storage spiced:chatter "$(id)".text