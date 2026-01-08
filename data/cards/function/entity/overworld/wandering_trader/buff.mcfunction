
## Buff Wandering trader with emerald
scoreboard players add @s maxHealth 1
scoreboard players add @s health 1

execute as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=!filled,tag=!blocked,tag=!block,limit=1,sort=random] at @s run tag @s add summon.llama
execute as @e[type=armor_stand,tag=board,tag=id,tag=summon.llama] at @s run data merge entity @s {CustomName:{"text":"Wandering Trader"}}
execute as @e[type=armor_stand,tag=board,tag=id,tag=summon.llama] at @s run team join red @s
execute as @e[type=armor_stand,tag=board,tag=id,tag=summon.llama] at @s run function cards:entity/overworld/llama/summon
tag @e[type=armor_stand,tag=id,tag=summon.llama] remove summon.llama