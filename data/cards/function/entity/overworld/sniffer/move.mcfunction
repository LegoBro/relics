playsound minecraft:entity.sniffer.step master @a[tag=id] ~ ~ ~ 10 1 1

execute if score #cards var matches ..7 store result score #rand var run loot spawn 0 -200 0 loot cards:0_1
execute if score #rand var matches 0 as @p[tag=id,tag=turn] run function cards:consumable/defend/pitcher_plant/discover
execute if score #rand var matches 1 as @p[tag=id,tag=turn] run function cards:consumable/attack/torchflower/discover