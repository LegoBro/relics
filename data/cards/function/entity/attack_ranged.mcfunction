## Attacks using the target and attacker tags
tellraw @a[tag=id] [{"selector":"@e[tag=attacker,tag=id,limit=1]"},{"text":" attacks ","color":"white"},{"selector":"@e[tag=target,tag=id,limit=1]"}]
scoreboard players operation #damage var = @e[tag=attacker,tag=id,limit=1] attack
execute if entity @e[tag=attacker,tag=building.targets,tag=id,limit=1] run scoreboard players add #damage var 1
scoreboard players operation #fire var = @e[tag=attacker,tag=id,limit=1] apply_fire
scoreboard players operation #poison var = @e[tag=attacker,tag=id,limit=1] apply_poison
scoreboard players operation #wither var = @e[tag=attacker,tag=id,limit=1] apply_wither

execute as @e[tag=target,tag=id,limit=1] run function cards:entity/apply_dot
execute as @e[tag=target,tag=id,limit=1] unless entity @e[tag=attacker,tag=id,limit=1,tag=piercing] run function cards:entity/apply_damage
execute as @e[tag=target,tag=id,limit=1] if entity @e[tag=attacker,tag=id,limit=1,tag=piercing] run function cards:entity/apply_pierce_damage

tag @e[tag=target,tag=id,limit=1] remove target
tag @e[tag=attacker,tag=id,limit=1] remove attacker
