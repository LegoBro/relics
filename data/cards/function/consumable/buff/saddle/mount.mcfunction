## Mounts selected to hovered entities

execute at @e[type=armor_stand,tag=hovered.slot,tag=id] as @n[tag=id,tag=has_saddle,tag=card.entity,distance=..1.5] run function cards:consumable/buff/saddle/mount_top
execute at @e[type=armor_stand,tag=selected,tag=id] as @n[tag=id,tag=card.entity,distance=..1.5] at @e[type=armor_stand,tag=hovered.slot,tag=id] run ride @s mount @n[tag=id,tag=saddle_top,distance=..100]
execute as @n[tag=saddle_top,tag=id,distance=..100] on passengers run return run function cards:consumable/buff/saddle/remove_entity
return fail