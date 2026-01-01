## Successful attack, either normal or special
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] run tag @e[tag=attackable,tag=id,limit=1,sort=nearest] add target
execute at @e[type=armor_stand,tag=selected,tag=filled,tag=id,limit=1] run tag @e[tag=attackable,tag=id,limit=1,sort=nearest] add attacker

execute if entity @e[tag=attackable,tag=attacker,tag=!special_attack,tag=id,limit=1,sort=nearest] at @s run function main:player/raycast/selected/attack/success_attack
execute if entity @e[tag=attackable,tag=attacker,tag=special_attack,tag=id,limit=1,sort=nearest] at @s run function main:player/raycast/selected/attack/success_special
execute as @e[tag=board,tag=id] run function main:board/cell/display
