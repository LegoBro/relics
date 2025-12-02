## Ambush quest stuff
execute unless score #ignore_text var matches 1 run function main:player/advancement/reward/100
#execute unless score #ignore_text var matches 1 run tellraw @s [{"translate":"cheat_unlock","color":"gray"},{"text":"stickypiston","color":"gold"}]
execute unless score #ignore_text var matches 1 run tellraw @s [{"translate":"arena.unlock","color":"green"},{"translate":"arena.redstone","color":"gold"}]