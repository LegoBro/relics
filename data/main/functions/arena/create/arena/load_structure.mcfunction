## Loads the structure in
# structure stuff

data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/base"}
setblock ~ ~1 ~ redstone_block

scoreboard players operation game.id var = #loops var

scoreboard players set #timer var -2400
scoreboard players set #mode var 0
scoreboard players set #fatigue var -2


execute if entity @s[tag=dueling] run function main:player/settings/get

execute if score #mode var matches 0 positioned ~22 ~5 ~22 run function main:board/start/classic
execute if score #mode var matches 1 positioned ~22 ~5 ~22 run function main:board/start/mirror
execute if score #mode var matches 2 positioned ~22 ~5 ~22 run function main:board/start/draft
execute if score #mode var matches 3 positioned ~22 ~5 ~22 run function main:board/start/no_draw

# Dangerous, removes potential leftovers
fill ~ ~ ~ ~ ~1 ~ air

scoreboard players operation @e[type=armor_stand,tag=board.center,limit=1,tag=id] set.time = #timer var
scoreboard players operation @e[type=armor_stand,tag=board.center,limit=1,tag=id] set.handSize = #handSize var
scoreboard players operation @e[type=armor_stand,tag=card.hero,limit=2,tag=id] set.fatigue = #fatigue var


# remove tag from entity
tag @e[type=armor_stand,tag=arena.anchor,tag=new,limit=1] remove new
