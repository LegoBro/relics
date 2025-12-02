## Death effects
execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_1
execute if score #rand var matches 0 run scoreboard players add @e[tag=id,tag=target,limit=1,sort=nearest] slowness 7
execute if score #rand var matches 0 run playsound minecraft:entity.zombie_villager.cure hostile @a[tag=id] ~ ~ ~ 1 2 1

playsound minecraft:entity.skeleton.shoot master @a[tag=id] ~ ~ ~ 10 1 1
