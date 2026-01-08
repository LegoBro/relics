# hit with anvil
playsound minecraft:item.mace.smash_ground master @a[tag=id] ~ ~ ~ 1 1 1
scoreboard players set #damage var 3
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:entity/apply_damage
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] if entity @e[tag=card.entity,tag=id,limit=1,sort=nearest] run return 0
scoreboard players add @s saturation 8
function cards:consumable/attack/mace/ethereal
