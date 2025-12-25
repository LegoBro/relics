## Final attack

function cards:entity/get/attack
scoreboard players operation #damage var = #attack var

execute at @e[tag=id,tag=board,tag=attack.target.cell,distance=..100] run tag @n[tag=attackable,distance=..1.5,tag=id] add attack.target.entity

execute if entity @n[tag=attack.target.entity,distance=..100,tag=id] run tellraw @a[tag=id] [{"selector":"@n[tag=moving,tag=id,distance=..100]"},{text:" "},{"translate":"attack.lunging","color":"white"},{text:" "},{"selector":"@e[tag=attack.target.entity,tag=id,distance=..100]"}]

execute as @e[tag=attack.target.entity,distance=..100,tag=id] at @s run function cards:entity/attack/apply
tag @e[tag=id,tag=board,tag=attack.target.cell,distance=..100] remove attack.target.cell
tag @e[tag=id,tag=attack.target.entity,distance=..100] remove attack.target.entity