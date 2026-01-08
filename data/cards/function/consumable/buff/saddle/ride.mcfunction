## Selected entity moves to/rides hovered.slot
# Mount keeps it's health and speed
execute at @n[type=armor_stand,tag=selected,tag=id,distance=..100] as @n[tag=id,tag=card.entity,distance=..1.5] run function cards:entity/get/raw_stats

execute unless function cards:consumable/buff/saddle/mount run return run function main:player/raycast/selected/fail_move

execute at @n[type=armor_stand,tag=hovered.slot,tag=id,distance=..100] as @n[tag=id,tag=has_saddle,tag=card.entity,distance=..1.5] run function cards:consumable/buff/saddle/copy_stats
execute as @n[type=armor_stand,tag=selected,tag=id,distance=..100] run function main:board/cell/move/start_clear
tag @s remove selected
execute as @e[tag=board,tag=id,distance=..100] run function main:board/cell/display

scoreboard players set @s rightClick 0