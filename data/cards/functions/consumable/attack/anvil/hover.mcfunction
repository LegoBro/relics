# hit with anvil
scoreboard players set #damage var 4
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:entity/display/damage
