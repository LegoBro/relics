## Ambush quest stuff
execute unless score #ignore_text var matches 1 run function main:player/advancement/reward/100
execute unless score #ignore_text var matches 1 run tellraw @s [{"translate":"music.unlock","color":"gold"},{"translate":"music.relic","color":"aqua"}]
