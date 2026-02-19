## Loads the structure in
# structure stuff

tag @e remove id
place template main:arena/arena ~ ~ ~
#setblock ~ ~1 ~ redstone_block

scoreboard players operation game.id var = #loops var

execute positioned ~22 ~5 ~22 run function main:board/tutorial/start
scoreboard players set @e[type=mannequin,tag=steve,limit=1,tag=id] set.fatigue -2000000

# remove tag from entity
tag @e[type=armor_stand,tag=arena.anchor,tag=new,limit=1] remove new
