# Repeat
playsound minecraft:block.comparator.click hostile @a[tag=id] ~ ~ ~ 1 1 1

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @n[tag=card.building,tag=id,distance=..1.5] at @s run function cards:entity/end_turn/macro with entity @s data
