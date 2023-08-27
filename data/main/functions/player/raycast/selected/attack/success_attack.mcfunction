## Attack an entity


execute as @e[tag=attacker,tag=id,limit=1] at @s run function cards:entity/attack_dict

execute if score @s range matches 1 run function cards:entity/attack
execute if score @s range matches 2.. run function cards:entity/attack_ranged

tag @e[type=armor_stand,tag=selected,tag=id] remove movable
tag @e[type=armor_stand,tag=selected,tag=id] remove selected
tag @s remove selected
