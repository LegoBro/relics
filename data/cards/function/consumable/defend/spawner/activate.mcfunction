## Place a cobblestone block
playsound block.stone.place master @a[tag=id] ~ ~ ~ 1 0.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~ ~1 ~ ~ ~1 ~ spawner{SpawnCount:0,SpawnRange:0,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{entity:{id:"minecraft:silverfish"}}} replace air
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add blocked
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add block
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add filled
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add spawner
execute if entity @s[tag=player.1] run tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add spawner.1
execute if entity @s[tag=player.2] run tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add spawner.2
