## Gives card, also shrieks
particle minecraft:shriek{delay:20} ~ ~2 ~ 0 0 0 0 1 force @a
particle minecraft:shriek{delay:20} ~ ~2 ~ 0 0 0 0 1 force @a
particle minecraft:shriek{delay:20} ~ ~2 ~ 0 0 0 0 1 force @a
playsound minecraft:block.sculk_shrieker.shriek master @a

scoreboard players add @s endTurn 1
execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] store result score #friendly var if entity @s[tag=friendly]
execute unless score @s endTurn matches 4 if score #friendly var matches 0 as @p[tag=id,tag=wait] run function cards:consumable/defend/sculk_shrieker/give_sculk
execute unless score @s endTurn matches 4 if score #friendly var matches 1 as @p[tag=id,tag=turn] run function cards:consumable/defend/sculk_shrieker/give_sculk

execute if score @s endTurn matches 4 if score #friendly var matches 0 as @p[tag=id,tag=wait] run function cards:entity/overworld/warden/discover
execute if score @s endTurn matches 4 if score #friendly var matches 1 as @p[tag=id,tag=turn] run function cards:entity/overworld/warden/discover
