## Attacks using the target and attacker tags

tellraw @a[tag=id] [{"selector":"@e[tag=attacker,tag=id,limit=1]"},{"text":" attacks ","color":"white"},{"selector":"@e[tag=target,tag=id,limit=1]"}]
scoreboard players operation #damage var = @e[tag=attacker,tag=id,limit=1] attack

execute if score @e[tag=attacker,tag=id,limit=1] strength matches 1.. if score @e[tag=attacker,tag=id,limit=1] range matches ..1 run scoreboard players add #damage var 3
execute if score @e[tag=attacker,tag=id,limit=1] weakness matches 1.. if score @e[tag=attacker,tag=id,limit=1] range matches ..1 run scoreboard players remove #damage var 4
execute if score #damage var matches ..-1 run scoreboard players set #damage var 0

scoreboard players operation #fire var = @e[tag=attacker,tag=id,limit=1] apply_fire
scoreboard players operation #poison var = @e[tag=attacker,tag=id,limit=1] apply_poison
scoreboard players operation #wither var = @e[tag=attacker,tag=id,limit=1] apply_wither

execute as @e[tag=target,tag=id,limit=1] run function cards:entity/apply_dot
execute as @e[tag=target,tag=id,limit=1] run function cards:entity/apply_damage

tag @e[tag=attacker,tag=id,limit=1] add swap_attacker
tag @e[tag=attacker,tag=id,limit=1] remove attacker

tag @e[tag=target,tag=id,limit=1,tag=!special_attack] add attacker
tag @e[tag=target,tag=id,limit=1] remove target

tag @e[tag=swap_attacker,tag=id,limit=1] add target
tag @e[tag=swap_attacker,tag=id,limit=1] remove swap_attacker

scoreboard players operation #damage var = @e[tag=attacker,tag=id,limit=1] attack

execute if score @e[tag=attacker,tag=id,limit=1] strength matches 1.. if score @e[tag=attacker,tag=id,limit=1] range matches ..1 run scoreboard players add #damage var 3
execute if score @e[tag=attacker,tag=id,limit=1] weakness matches 1.. if score @e[tag=attacker,tag=id,limit=1] range matches ..1 run scoreboard players remove #damage var 4
execute if score #damage var matches ..-1 run scoreboard players set #damage var 0

scoreboard players operation #fire var = @e[tag=attacker,tag=id,limit=1] apply_fire
scoreboard players operation #poison var = @e[tag=attacker,tag=id,limit=1] apply_poison
scoreboard players operation #wither var = @e[tag=attacker,tag=id,limit=1] apply_wither

execute if entity @e[tag=attacker,tag=!card.building,tag=id,limit=1] as @e[tag=target,tag=id,limit=1] run function cards:entity/apply_dot
execute if entity @e[tag=attacker,tag=!card.building,tag=id,limit=1] as @e[tag=target,tag=id,limit=1] run function cards:entity/apply_damage
execute as @e[tag=target,tag=id,limit=1,tag=!hero.1,tag=!hero.2] unless entity @e[tag=attacker,tag=id,limit=1] at @s run function cards:entity/overworld/travel



tag @e[tag=target,tag=id] remove target
tag @e[tag=attacker,tag=id] remove attacker
