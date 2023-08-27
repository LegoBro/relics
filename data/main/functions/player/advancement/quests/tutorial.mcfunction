## Ambush quest stuff
execute unless score #ignore_text var matches 1 run function main:player/advancement/reward/100
#execute unless score #ignore_text var matches 1 run tellraw @s [{"translate":"cheat_unlock","color":"gray"},{"text":"tutorial","color":"gold"}]
execute unless score #ignore_text var matches 1 run tellraw @s [{"translate":"hero.unlock","color":"light_purple"},{"translate":"hero.alex","color":"yellow"}]