## Place a sculk block
playsound block.sculk.place master @a[tag=id] ~ ~ ~ 1 0.5 1
fill ~-1 ~1 ~-1 ~1 ~2 ~1 sculk
tag @e[type=armor_stand,tag=id,limit=1,sort=nearest,distance=..2] add blocked
tag @e[type=armor_stand,tag=id,limit=1,sort=nearest,distance=..2] add block
tag @e[type=armor_stand,tag=id,limit=1,sort=nearest,distance=..2] add filled