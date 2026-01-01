## Attack an entity


execute as @e[tag=card.entity,tag=attacker,tag=special_attack,tag=id,limit=1,sort=nearest] at @s run function cards:entity/attack/macro with entity @s data

tag @e[type=armor_stand,tag=selected,tag=id] remove movable
tag @e[type=armor_stand,tag=selected,tag=id] remove selected
tag @s remove selected

tag @e[tag=target,tag=id,limit=1] remove target
tag @e[tag=attacker,tag=id,limit=1] remove attacker
