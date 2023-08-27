# Absorb entity back into hand
playsound minecraft:block.decorated_pot.shatter hostile @a[tag=id] ~ ~ ~ 10 0 1

execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:entity/capture_dict

## Destroy entity
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:entity/get_stats
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:entity/death
scoreboard players operation #maxHealth var -= #health var
execute if score #maxHealth var matches 5.. run advancement grant @p[tag=id,tag=turn] only main:quests/sherd