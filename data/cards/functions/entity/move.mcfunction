## Generic move function, useful for laziness
#execute at @e[tag=destination] run setblock ~ ~5 ~ beacon
#execute at @e[tag=start] run setblock ~ ~5 ~ stone
execute store success score #player1 var if entity @e[tag=player.1,tag=id,tag=turn]
execute as @e[tag=card.entity,tag=id,limit=1,tag=moving,sort=nearest] at @s run function cards:entity/move_dict
#tp @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] @e[type=armor_stand,tag=destination,tag=id,limit=1]
execute if score #player1 var matches 1 at @e[type=armor_stand,tag=destination,tag=id,limit=1] run tp @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] ~ ~1 ~
execute if score #player1 var matches 0 at @e[type=armor_stand,tag=destination,tag=id,limit=1] run tp @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] ~ ~1 ~ 180 0


tag @e[type=armor_stand,tag=destination,tag=id] add filled
tag @e[type=armor_stand,tag=destination,tag=id,tag=!movable.skip] remove movable
tag @e[type=armor_stand,tag=destination,tag=id,tag=movable.skip] add movable
execute if entity @e[type=armor_stand,tag=start,tag=friendly,tag=id] run tag @e[type=armor_stand,tag=destination,tag=id] add friendly
execute if entity @e[type=armor_stand,tag=start,tag=hostile,tag=id] run tag @e[type=armor_stand,tag=destination,tag=id] add hostile
execute store result score #friendly var if entity @e[type=armor_stand,tag=destination,tag=friendly,tag=id]

tag @e[type=armor_stand,tag=start,tag=id] remove filled
tag @e[type=armor_stand,tag=start,tag=id] remove movable
tag @e[type=armor_stand,tag=start,tag=id] remove friendly
tag @e[type=armor_stand,tag=start,tag=id] remove hostile
tag @e[type=armor_stand,tag=start,tag=id] remove selected
tag @e[type=armor_stand,tag=start,tag=id] remove start

execute as @e[type=armor_stand,tag=destination,tag=trap,tag=id,limit=1] unless entity @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest,tag=flying] at @s run function cards:consumable/defend/trap/trigger_dict
execute if entity @e[tag=sculk_shrieker,tag=id] run function cards:entity/move/shrieker

tag @e[type=armor_stand,tag=destination,tag=id] remove destination
tag @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] remove moving
#say move
execute as @e[tag=board,tag=id] run function main:board/cell/display
