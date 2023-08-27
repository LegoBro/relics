## Give all aquatic entities +1 HP
#function cards:entity/overworld/dolphin/label_water

execute as @e[tag=water,tag=id] at @s if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add @s maxHealth 1
execute as @e[tag=water,tag=id] at @s if entity @e[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run scoreboard players add @s health 1

scoreboard players add @s play.water 1
playsound minecraft:entity.dolphin.ambient_water master @a[tag=id] ~ ~ ~ 10 1 1
