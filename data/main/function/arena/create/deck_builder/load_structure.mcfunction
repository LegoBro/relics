## Loads the structure in
# structure stuff
tag @e remove id
data merge block ~ ~ ~ {rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/deck_builder"}
setblock ~ ~1 ~ redstone_block

scoreboard players operation game.id var = #loops var

# Copies progress to a maluable item for deck modification
item replace entity @s enderchest.1 from entity @s enderchest.0

# tp the player
tp @s ~23 ~4 ~16

# Summon the main ep entity
# Removed air with custom_model_data=0 on head - what did that do?
summon armor_stand ~22.5 ~4 ~22.5 {DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["deck.builder.anchor","get_id"]}
summon marker ~22 ~4 ~14 {Tags:["deck.builder.marker","get_id"]}
summon marker ~22 ~4 ~31 {Tags:["deck.builder.ah","get_id"]}
execute as @e[tag=get_id] run scoreboard players operation @s id = game.id var
tag @e[tag=get_id] remove get_id

# id for player
scoreboard players operation @s id = #loops var



# remove tag from entity
tag @e[type=armor_stand,tag=arena.anchor,tag=new,limit=1] remove new
