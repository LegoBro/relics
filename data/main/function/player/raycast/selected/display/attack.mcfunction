## Attacks using the target and attacker tags


#execute if entity @e[tag=attackable,tag=attacker,tag=!special_attack,tag=id,limit=1,sort=nearest] at @s run function main:player/raycast/selected/attack/success_attack
#execute if entity @e[tag=attackable,tag=attacker,tag=special_attack,tag=id,limit=1,sort=nearest] at @s run function main:player/raycast/selected/attack/success_special


execute as @n[tag=attacker,tag=id,distance=..100] run function cards:entity/get/attack

scoreboard players operation #damage var = #attack var

execute as @n[tag=target,tag=id,distance=..100] run function cards:entity/attack/hover

execute if entity @n[tag=attacker,tag=id,distance=..100,tag=special_attack] run return run function main:player/raycast/selected/display/attack/clean
execute if score @n[tag=attacker,tag=id,distance=..100] range matches 2.. run return run function main:player/raycast/selected/display/attack/clean

tag @n[tag=attacker,tag=id,distance=..100] add swap_attacker
tag @n[tag=attacker,tag=id,distance=..100] remove attacker

tag @n[tag=target,tag=id,distance=..100,tag=!special_attack] add attacker
tag @n[tag=target,tag=id,distance=..100] remove target

tag @n[tag=swap_attacker,tag=id,distance=..100] add target
tag @n[tag=swap_attacker,tag=id,distance=..100] remove swap_attacker

execute as @n[tag=attacker,tag=id,distance=..100] run function cards:entity/get/attack
scoreboard players operation #damage var = #attack var

execute if entity @n[tag=attacker,tag=!card.building,tag=id,distance=..100] as @n[tag=target,tag=id,distance=..100] run function cards:entity/attack/hover

function main:player/raycast/selected/display/attack/clean
