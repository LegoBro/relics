## mine is only option if 2 adjacent friends
scoreboard players set #count var 0
execute positioned ~4 ~ ~ if entity @e[type=armor_stand,tag=board,tag=friendly,tag=id,limit=1,sort=nearest,distance=..0.5] run scoreboard players add #count var 1
execute positioned ~-4 ~ ~ if entity @e[type=armor_stand,tag=board,tag=friendly,tag=id,limit=1,sort=nearest,distance=..0.5] run scoreboard players add #count var 1
execute positioned ~ ~ ~4 if entity @e[type=armor_stand,tag=board,tag=friendly,tag=id,limit=1,sort=nearest,distance=..0.5] run scoreboard players add #count var 1
execute positioned ~ ~ ~-4 if entity @e[type=armor_stand,tag=board,tag=friendly,tag=id,limit=1,sort=nearest,distance=..0.5] run scoreboard players add #count var 1
#execute positioned ~ ~1 ~4 run particle flame
execute if score #count var matches 2.. run team join yellow @s
