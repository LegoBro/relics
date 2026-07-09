## Attacks using the target and attacker tags
#tellraw @a[tag=id] {"translate":"attack.normal","with":[{"selector":"@n[tag=attacker,tag=id,distance=..100]"},{"selector":"@n[tag=target,tag=id,distance=..100]"}]}
tellraw @a[tag=id] {"translate":"attack.normal","with":[{"selector":"@n[tag=attacker,tag=id,distance=..100]"},{"selector":"@n[tag=target,tag=id,distance=..100]"}]}
execute as @n[tag=attacker,tag=id,distance=..100] at @s run function cards:entity/get/attack

scoreboard players operation #damage var = #attack var

execute as @e[tag=target,tag=id,limit=1] run function cards:entity/apply_dot
execute as @e[tag=target,tag=id,limit=1] unless entity @e[tag=attacker,tag=id,limit=1,tag=piercing] run function cards:entity/apply_damage
execute as @e[tag=target,tag=id,limit=1] if entity @e[tag=attacker,tag=id,limit=1,tag=piercing] run function cards:entity/apply_pierce_damage

tag @e[tag=target,tag=id,limit=1] remove target
tag @n[tag=attacker,tag=id] remove attacker
