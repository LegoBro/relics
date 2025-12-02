## Death effects
# 50% chance of avoiding damage
execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_1

execute if score #rand var matches 0 run scoreboard players operation @s health += #damage var
execute if score #rand var matches 0 run tellraw @a[tag=id] {"translate":"card.phantom.dodge"}
execute unless score #rand var matches 0 run playsound entity.phantom.hurt hostile @a[tag=id] ~ ~ ~ 1 0.7 1
execute if score #rand var matches 0 run playsound entity.phantom.swoop hostile @a[tag=id] ~ ~ ~ 1 2 1

playsound minecraft:entity.phantom.hurt master @a[tag=id] ~ ~ ~ 10 0.8 1
