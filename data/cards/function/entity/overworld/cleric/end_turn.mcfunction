## Completely heal a random entity (actually just 5)
scoreboard players set #heal var 5
execute if entity @e[tag=friendly,tag=board,tag=id,distance=..1.5] as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=!unbuffable,tag=id] at @s if entity @e[tag=friendly,tag=board,tag=id,distance=..1.5] run tag @s add heal_target
execute as @e[tag=id,tag=heal_target,sort=random,limit=1] at @s run function cards:entity/heal
tag @e[tag=heal_target,tag=id] remove heal_target