## drown


execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_3

execute if score #rand var matches 0 run scoreboard players add @e[type=drowned,tag=id,tag=new,limit=1,sort=nearest] range 2
execute if score #rand var matches 0 run scoreboard players add @e[type=drowned,tag=id,tag=new,limit=1,sort=nearest] attack 4
execute if score #rand var matches 0 run item replace entity @e[type=drowned,tag=id,tag=new,limit=1,sort=nearest] weapon.mainhand with trident
scoreboard players add @s play.water 1

playsound minecraft:entity.drowned.ambient_water master @a[tag=id] ~ ~ ~ 10 1 1
