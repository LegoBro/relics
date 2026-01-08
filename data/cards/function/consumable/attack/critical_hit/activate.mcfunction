# hit with anvil
playsound minecraft:entity.player.attack.crit master @a[tag=id] ~ ~ ~ 1 0.75 1
scoreboard players set #damage var 0
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @n[tag=card.entity,tag=id,distance=..1.5] run function cards:consumable/attack/critical_hit/apply
