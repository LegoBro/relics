## drown
scoreboard players set #count var 0
execute as @e[type=drowned,tag=drowned,tag=id] at @s if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add #count var 1

execute if score #count var matches 3.. run scoreboard players add @e[type=drowned,tag=id,tag=new,limit=1,sort=nearest] range 2
execute if score #count var matches 3.. run scoreboard players add @e[type=drowned,tag=id,tag=new,limit=1,sort=nearest] attack 4
execute if score #count var matches 3.. run item replace entity @e[type=drowned,tag=id,tag=new,limit=1,sort=nearest] weapon.mainhand with trident
scoreboard players add @s play.water 1

playsound minecraft:entity.drowned.ambient_water master @a[tag=id] ~ ~ ~ 10 1 1
