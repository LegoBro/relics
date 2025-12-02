## Similar to activate, but ran as entity, used for tutorial
playsound block.stone.place master @a[tag=id] ~ ~ ~ 1 0.5 1
fill ~-1 ~1 ~-1 ~1 ~3 ~1 cobblestone replace air
tag @s add blocked
tag @s add block
