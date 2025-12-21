## Place a cobblestone block
execute as @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] run function cards:consumable/defend/skeleton_trap/trigger_message
tag @s remove skeleton_trap
execute at @e[tag=id,tag=lightning_rod,limit=1,sort=nearest] run summon minecraft:lightning_bolt ~ ~1 ~
execute unless entity @e[tag=id,tag=lightning_rod] at @e[type=armor_stand,tag=destination,tag=id,limit=1] run summon minecraft:lightning_bolt ~ ~1 ~

scoreboard players set #damage var 7
execute unless entity @e[tag=id,tag=lightning_rod] at @e[type=armor_stand,tag=destination,tag=id,limit=1] as @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] run function cards:entity/apply_damage
execute unless entity @e[tag=id,tag=lightning_rod] at @e[type=armor_stand,tag=destination,tag=filled,tag=id,limit=1] as @e[tag=moving,tag=id,limit=1,sort=nearest] run function cards:entity/convert_by_lightning

playsound minecraft:entity.skeleton_horse.death hostile @a[tag=id] ~ ~ ~ 1 0 1

tag @e[type=armor_stand,tag=id,tag=skeleton_trap.summon] remove skeleton_trap.summon
execute as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=!filled,tag=!blocked,tag=!block,limit=4,sort=random] at @s run tag @s add skeleton_trap.summon
execute as @e[type=armor_stand,tag=board,tag=id,tag=skeleton_trap.summon] at @s run data merge entity @s {CustomName:{"text":"Skeleton Trap"}}
execute as @e[type=armor_stand,tag=board,tag=id,tag=skeleton_trap.summon] at @s run team join red @s
execute as @e[type=armor_stand,tag=board,tag=id,tag=skeleton_trap.summon,tag=!filled] at @s unless entity @e[tag=id,tag=card.entity,distance=..1.5] run function cards:entity/overworld/skeleton_horse/summon
tag @e[type=armor_stand,tag=id,tag=skeleton_trap.summon] remove skeleton_trap.summon

execute if entity @s[tag=skeleton_trap.2] if entity @a[tag=id,tag=turn,tag=player.1] as @e[type=skeleton_horse,tag=new,tag=id] at @s run function cards:entity/nether/magma_cube/not_friendly
execute if entity @s[tag=skeleton_trap.1] if entity @a[tag=id,tag=turn,tag=player.2] as @e[type=skeleton_horse,tag=new,tag=id] at @s run function cards:entity/nether/magma_cube/not_friendly



tag @s remove skeleton_trap.1
tag @s remove skeleton_trap.2
