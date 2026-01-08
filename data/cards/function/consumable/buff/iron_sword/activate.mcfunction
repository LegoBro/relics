# hit with anvil
playsound minecraft:entity.player.attack.sweep hostile @a[tag=id] ~ ~ ~ 1 1.25 1

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:consumable/buff/iron_sword/apply
