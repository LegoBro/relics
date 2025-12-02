## Place a cobblestone block
playsound minecraft:entity.generic.explode master @a[tag=id] ~ ~ ~ 1 0 1
playsound minecraft:entity.tnt.primed master @a[tag=id] ~ ~ ~ 1 1.5 1

execute as @e[type=armor_stand,tag=board,scores={z=3}] run data merge entity @s {CustomName:'{"text":"TNT Cannon"}'}

execute as @e[type=armor_stand,tag=board.center,tag=id,limit=1,tag=!filled,tag=!blocked,tag=!block] at @s run function cards:entity/overworld/tnt/summon
execute at @e[type=armor_stand,tag=board.center,tag=id,limit=1] positioned ~8 ~ ~ as @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id,tag=!filled,tag=!blocked,tag=!block,distance=..1] run function cards:entity/overworld/tnt/summon
execute at @e[type=armor_stand,tag=board.center,tag=id,limit=1] positioned ~4 ~ ~ as @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id,tag=!filled,tag=!blocked,tag=!block,distance=..1] run function cards:entity/overworld/tnt/summon
execute at @e[type=armor_stand,tag=board.center,tag=id,limit=1] positioned ~-4 ~ ~ as @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id,tag=!filled,tag=!blocked,tag=!block,distance=..1] run function cards:entity/overworld/tnt/summon
execute at @e[type=armor_stand,tag=board.center,tag=id,limit=1] positioned ~-8 ~ ~ as @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id,tag=!filled,tag=!blocked,tag=!block,distance=..1] run function cards:entity/overworld/tnt/summon
