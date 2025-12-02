## Ambush quest stuff
execute unless score #ignore_text var matches 1 run function main:player/advancement/reward/100
#execute unless score #ignore_text var matches 1 run tellraw @s [{"translate":"cheat_unlock","color":"gray"},{"text":"alchemy","color":"gold"}]
execute unless score #ignore_text var matches 1 run tellraw @s [{"translate":"arena.unlock","color":"green"},{"translate":"arena.amethyst","color":"gold"}]
execute unless score #ignore_text var matches 1 run tellraw @s [{"translate":"music.unlock","color":"gold"},{"translate":"music.amethyst","color":"aqua"}]