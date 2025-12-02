## Deletes entities (structure remains to save CPU usage)
tp @a[tag=id] 8 200 8
clear @a[tag=id,gamemode=adventure]
scoreboard players operation #id var = @s id
execute as @e[type=armor_stand,tag=arena.anchor] if score @s id = #id var run tag @s add anchor.point
execute at @e[type=armor_stand,tag=anchor.point,limit=1] run function main:arena/delete
tag @e[type=armor_stand,tag=anchor.point] remove anchor.point

scoreboard players set @s id -1
