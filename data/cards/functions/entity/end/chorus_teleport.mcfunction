## Teleport to random location (if open)
tag @s add moving
tag @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id] add start
execute as @e[type=armor_stand,tag=board,tag=id,tag=!filled,tag=!blocked,tag=!block,sort=random,limit=1] run tag @s add destination

execute unless entity @e[type=armor_stand,tag=destination,tag=id] run tellraw @a[tag=id] {"translate":"travel.fail","color":"red"}
execute if entity @e[type=armor_stand,tag=destination,tag=id] run function cards:entity/move
tag @e[tag=moving,tag=id] remove moving
tag @e[tag=destination,tag=id] remove destination
tag @e[tag=start,tag=id] remove start
#say random tp attempt
playsound minecraft:entity.enderman.teleport master @a[tag=id] ~ ~ ~ 1 1 1
