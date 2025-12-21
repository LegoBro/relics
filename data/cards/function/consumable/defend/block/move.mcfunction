## Generic move function, useful for laziness
#execute at @e[tag=destination] run setblock ~ ~5 ~ beacon
#execute at @e[tag=start] run setblock ~ ~5 ~ stone
execute store success score #player1 var if entity @e[tag=player.1,tag=id,tag=turn]
#tp @e[tag=card.building,tag=moving,tag=id,limit=1,sort=nearest] @e[type=armor_stand,tag=destination,tag=id,limit=1]
execute at @e[type=armor_stand,tag=destination,tag=id,limit=1] run tp @e[tag=card.building,tag=moving,tag=id,limit=1,sort=nearest] ~ ~1 ~
# Move blocks to arbitrary but certain point, and then move them back
execute at @e[type=armor_stand,tag=start,tag=id,limit=1] run clone ~-1 ~1 ~-1 ~1 ~3 ~1 0 10 0 replace move
execute at @e[type=armor_stand,tag=destination,tag=id,limit=1] run clone 0 10 0 2 12 2 ~-1 ~1 ~-1 replace move

# Wheat field Fix
execute at @n[tag=card.building,tag=farmland,tag=moving,tag=id,limit=1,sort=nearest,distance=..250] run fill ~1 ~1 ~1 ~-1 ~1 ~-1 wheat[age=7]

tag @e[type=armor_stand,tag=destination,tag=id] add filled
tag @e[type=armor_stand,tag=destination,tag=id] add block
tag @e[type=armor_stand,tag=destination,tag=id] add blocked

execute if entity @e[type=armor_stand,tag=start,tag=friendly,tag=id] run tag @e[type=armor_stand,tag=destination,tag=id] add friendly
execute if entity @e[type=armor_stand,tag=start,tag=hostile,tag=id] run tag @e[type=armor_stand,tag=destination,tag=id] add hostile


tag @e[type=armor_stand,tag=start,tag=id] remove filled
tag @e[type=armor_stand,tag=start,tag=id] remove blocked
tag @e[type=armor_stand,tag=start,tag=id] remove block
tag @e[type=armor_stand,tag=start,tag=id] remove movable
tag @e[type=armor_stand,tag=start,tag=id] remove friendly
tag @e[type=armor_stand,tag=start,tag=id] remove hostile
tag @e[type=armor_stand,tag=start,tag=id] remove selected
tag @e[type=armor_stand,tag=start,tag=id] remove start

tag @e[type=armor_stand,tag=destination,tag=id] remove destination
tag @e[tag=card.building,tag=moving,tag=id,limit=1,sort=nearest] remove moving
#say move
execute as @e[tag=board,tag=id] run function main:board/cell/display
