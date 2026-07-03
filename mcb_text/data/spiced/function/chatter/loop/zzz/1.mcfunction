# Generated with MC-Build

$function $(soundFunction)
data modify storage spiced:chatter text append from storage spiced:chatter args.message[0]
data remove storage spiced:chatter args.message[0]
data modify entity @s text set from storage spiced:chatter text