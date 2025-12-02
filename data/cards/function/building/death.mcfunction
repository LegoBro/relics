## An entity dies, freeing up the slot it has

# stores in scoreboard if dying entity was friendly or not
execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] store result score #friendly var if entity @s[tag=friendly]

function cards:building/death_dict

tag @e[type=armor_stand,tag=filled,tag=id,limit=1,distance=..1.5] remove filled
tag @e[type=armor_stand,tag=friendly,tag=id,limit=1,distance=..1.5] remove friendly
tag @e[type=armor_stand,tag=hostile,tag=id,limit=1,distance=..1.5] remove hostile
tag @e[type=armor_stand,tag=blocked,tag=id,limit=1,distance=..1.5] remove blocked
tag @e[type=armor_stand,tag=block,tag=id,limit=1,distance=..1.5] remove block

fill ~-1 ~ ~-1 ~1 ~2 ~1 air




kill @s
execute as @e[tag=board,tag=id] run function main:board/cell/display
#say death

scoreboard players set #killed var 1