## Give random entity armor

execute if entity @e[tag=friendly,tag=board,tag=id,distance=..1.5] as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=!unbuffable,tag=id] at @s if entity @n[tag=friendly,tag=board,tag=id,distance=..1.5] run tag @s add armor_target
scoreboard players add @e[tag=id,tag=armor_target,sort=random,limit=1] armor 1
tag @e[tag=armor_target,tag=id] remove armor_target