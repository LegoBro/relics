# Farm time
execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] store result score #friendly var if entity @s[tag=friendly]
execute if score #friendly var matches 1 run scoreboard players remove @a[tag=id,tag=wait] sat.overflow 3
