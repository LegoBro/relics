## 50% chance of Converting cobblestone to silverfish
execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_1
scoreboard players set #damage var 5


execute if score #rand var matches 0 run function cards:entity/apply_damage
execute if score #rand var matches 0 unless score @s health matches 1.. positioned ~ ~-1 ~ run function cards:entity/overworld/silverfish/summon

#say convert?
execute if score #rand var matches 0 run scoreboard players add @a[tag=id,tag=turn] conversions 1
