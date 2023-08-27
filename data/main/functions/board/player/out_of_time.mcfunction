## oofta to the player for being slow
scoreboard players set @s endTurn 1

execute store result score #hurt_hero var if entity @e[type=armor_stand,tag=id,tag=board.center,limit=1,tag=noCardHurt]
execute if score #hurt_hero var matches 0 run function main:player/raycast/select/recursive_draw

tellraw @s {"translate":"too_slow","color":"red"}
