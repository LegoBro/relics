## Place a cobblestone block
execute as @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] run function cards:consumable/defend/lava_pocket/trigger_message
tag @s remove lava_pocket
scoreboard players set #damage var 3

scoreboard players set #fire var 5
scoreboard players set #poison var 0
scoreboard players set #wither var 0

execute as @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] run function cards:entity/apply_dot
execute as @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] run function cards:entity/apply_damage

playsound minecraft:block.lava.ambient hostile @a[tag=id] ~ ~ ~ 10 0 1
