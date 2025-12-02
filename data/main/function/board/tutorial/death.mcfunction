
# Player handling, may not even happen
tellraw @a[tag=id] ["",{"translate":"tutorial","color":"blue"},{"translate":"tutorial.fail"}]
tp @a[tag=id] 8 200 8
clear @a[tag=id,gamemode=adventure]


execute at @e[type=armor_stand,tag=id,limit=1] run function main:arena/delete


scoreboard players set @a[tag=id] id -1
