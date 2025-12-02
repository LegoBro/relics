## Teleport to random location (if open)
execute store result score #randx var run loot spawn 0 -200 0 loot cards:0_4
execute store result score #randz var run loot spawn 0 -200 0 loot cards:0_4
scoreboard players add #randz var 1
tag @s add moving
tag @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id] add start
execute as @e[type=armor_stand,tag=board,tag=id,tag=!filled,tag=!blocked,tag=!block] if score @s x = #randx var if score @s z = #randz var run tag @s add destination

execute unless entity @e[type=armor_stand,tag=destination,tag=id] run tellraw @a[tag=id] {"translate":"travel.fail","color":"red"}
execute if entity @e[type=armor_stand,tag=destination,tag=id] run function cards:entity/move
tag @e[tag=moving,tag=id] remove moving
tag @e[tag=destination,tag=id] remove destination
tag @e[tag=start,tag=id] remove start
#say random tp attempt
playsound minecraft:entity.enderman.teleport master @a[tag=id] ~ ~ ~ 1 1 1
