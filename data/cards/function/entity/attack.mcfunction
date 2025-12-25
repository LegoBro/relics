## Attacks using the target and attacker tags

tellraw @a[tag=id] [{"selector":"@n[tag=attacker,tag=id,distance=..100]"},{text:" "},{"translate":"attack.normal","color":"white"},{text:" "},{"selector":"@n[tag=target,tag=id,distance=..100]"}]


execute as @n[tag=attacker,tag=id,distance=..100] run function cards:entity/get/attack

scoreboard players operation #damage var = #attack var

execute as @n[tag=target,tag=id,distance=..100] run function cards:entity/attack/apply

tag @n[tag=attacker,tag=id,distance=..100] add swap_attacker
tag @n[tag=attacker,tag=id,distance=..100] remove attacker

tag @n[tag=target,tag=id,distance=..100,tag=!special_attack] add attacker
tag @n[tag=target,tag=id,distance=..100] remove target

tag @n[tag=swap_attacker,tag=id,distance=..100] add target
tag @n[tag=swap_attacker,tag=id,distance=..100] remove swap_attacker

execute as @n[tag=attacker,tag=id,distance=..100] run function cards:entity/get/attack
scoreboard players operation #damage var = #attack var

execute if entity @n[tag=attacker,tag=!card.building,tag=id,distance=..100] as @n[tag=target,tag=id,distance=..100] run function cards:entity/attack/apply

execute as @n[tag=target,tag=id,distance=..100,tag=!hero.1,tag=!hero.2,tag=!defensive] unless entity @n[tag=attacker,tag=id,distance=..100] at @s run function cards:entity/overworld/travel

tag @e[tag=target,tag=id,distance=..100] remove target
tag @e[tag=attacker,tag=id,distance=..100] remove attacker
