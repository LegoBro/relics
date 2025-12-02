## Fox stuff


execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_5

execute if score #rand var matches 0 run function cards:consumable/buff/emerald/discover
execute if score #rand var matches 1 run function cards:consumable/buff/leather_armor/discover
execute if score #rand var matches 2 run function cards:entity/overworld/chicken/discover
playsound minecraft:entity.fox.screech master @a[tag=id] ~ ~ ~ 10 1 1
