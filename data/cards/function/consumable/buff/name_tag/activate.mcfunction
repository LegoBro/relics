# hit with anvil
playsound minecraft:block.brewing_stand.brew hostile @a[tag=id] ~ ~ ~ 1 1.5 1
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=vindicator,tag=id,limit=1,distance=..1.5,sort=nearest] run function cards:consumable/buff/name_tag/vindicator
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=sheep,tag=id,limit=1,distance=..1.5,sort=nearest] run function cards:consumable/buff/name_tag/sheep
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=killer_rabbit,tag=id,distance=..1.5,limit=1,sort=nearest] run function cards:consumable/buff/name_tag/rabbit
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=!killer_rabbit,tag=!sheep,tag=!vindicator,distance=..1.5,tag=id,limit=1,sort=nearest] run function cards:consumable/buff/name_tag/other
