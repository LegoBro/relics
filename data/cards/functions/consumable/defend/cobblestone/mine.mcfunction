## Mine the block
fill ~-1 ~1 ~-1 ~1 ~3 ~1 air replace cobblestone
tag @e[type=armor_stand,tag=board,tag=id,sort=nearest,tag=blocked,limit=1] remove blocked
tag @e[type=armor_stand,tag=board,tag=id,sort=nearest,tag=block,limit=1] remove filled
tag @e[type=armor_stand,tag=board,tag=id,sort=nearest,tag=block,limit=1] remove block

playsound block.stone.break master @a[tag=id] ~ ~ ~ 1 1.5 1
scoreboard players add @s mine.cobble 1
