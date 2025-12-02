## Mine the block
scoreboard players remove @s saturation 4
fill ~ ~1 ~ ~ ~1 ~ air replace spawner
tag @e[type=armor_stand,tag=board,tag=id,sort=nearest,tag=blocked,limit=1] remove blocked
tag @e[type=armor_stand,tag=board,tag=id,sort=nearest,tag=block,limit=1] remove filled
tag @e[type=armor_stand,tag=board,tag=id,sort=nearest,tag=block,limit=1] remove spawner
tag @e[type=armor_stand,tag=board,tag=id,sort=nearest,tag=block,limit=1] remove spawner.1
tag @e[type=armor_stand,tag=board,tag=id,sort=nearest,tag=block,limit=1] remove spawner.2
tag @e[type=armor_stand,tag=board,tag=id,sort=nearest,tag=block,limit=1] remove block


playsound block.stone.break master @a[tag=id] ~ ~ ~ 1 1.5 1
