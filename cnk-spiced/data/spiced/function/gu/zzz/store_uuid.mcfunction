#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

data modify storage gu:main in set from entity @s UUID
execute store result score @s gu.uuid.0 run data get storage gu:main in[0]
execute store result score @s gu.uuid.1 run data get storage gu:main in[1]
execute store result score @s gu.uuid.2 run data get storage gu:main in[2]
execute store result score @s gu.uuid.3 run data get storage gu:main in[3]