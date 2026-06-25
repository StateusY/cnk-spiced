# front info
# tellraw @s [{text:"Hey there! This welcome to "},{"translate":"spiced.tooltip",font:"spiced:tooltip"},{text:" - an unaffiliated addon for "},{"translate":"spiced.cnk_tooltip",font:"spiced:cnk_tooltip"},{text:".\n\n"},{text:"In "},{text:"Spiced",font:"spiced:tooltip"},{text:" you will find new recipes, new workstations, new crops, and plenty of secrets to find!\n\n"},{text:"Spiced",font:"spiced:tooltip"},{text:" is created by Stateus and Pan_Womsacz"}]

# feast info
# tellraw @s [{text:"The goal of "},{text:"Spiced",font:"spiced:tooltip"},{text:" is to cook up the King's Feast! This legendary meal consists of the mix of 5 difficult recipes that require you to find new ingredients and progress to culinary completion!"}]

# crop info
# tellraw @s [{text:"To the left are two crops you can grow in "},{text:"Spiced",font:"spiced:tooltip"},{text:"! Displayed are bell pepper and mustard."}]

# addon info
# tellraw @s [{text:"Our pack, "},{text:"Spiced",font:"spiced:tooltip"},{text:", is a "},{text:"Crop & Kettle Addon",font:"spiced:cnk_tooltip"},{text:" - "},{text:"C&K Addons",font:"spiced:cnk_tooltip"},{text:" are datapacks that hook into base "},{text:"C&K",font:"spiced:cnk_tooltip"},{text:" and to add new recipes and ingredients!"}]

# huntsman pie info
# tellraw @s [{text:"These are the workstations that you can use to make the Huntsman Pie! Hopefully you enjoy this little sample of "},{text:"Spiced","font":"spiced:tooltip"},{text:"'s cooking structure!\n\nRead the first page of your cookbook to begin!"}]

# discord server info
# tellraw @a [{text:"Now now, I know you all are eager to download "},{text:"C&K:Spiced",font:"spiced:tooltip"},{text:" right now and expand your culinary horizons, but good data packs take a good amount of time. While "},{text:"Spiced",font:"spiced:tooltip"},{text:" is still in development, you can stay up to date by joining our discord server where you can find teasers and dev posts along with our other packs!"}]

# playsound minecraft:block.creaking_heart.idle master @s ~ ~ ~ 0.47 0.6
# schedule function
# execute if score @s delay matches 0 run playsound minecraft:block.creaking_heart.idle master @s ~ ~ ~ 0.47 0.6
# execute if score @s delay matches 7 run playsound minecraft:block.dried_ghast.transition master @s ~ ~ ~ 0.49 0.56
# execute if score @s delay matches 10 run playsound minecraft:block.creaking_heart.spawn master @s ~ ~ ~ 0.01 0.5
# execute if score @s delay matches 12 run playsound minecraft:block.creaking_heart.place master @s ~ ~ ~ 0.13 0.5
# execute if score @s delay matches 16 run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 0.23 0.69
