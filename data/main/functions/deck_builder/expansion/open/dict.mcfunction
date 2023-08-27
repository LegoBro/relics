## All packs are same
scoreboard players add @s turnTimer 1

effect give @p[tag=id] mining_fatigue 10 100 true
effect clear @p[tag=id] resistance


execute if score @s turnTimer matches 1..40 run tp @s ~ ~ ~ ~10 ~
execute if score @s turnTimer matches 41..70 run tp @s ~ ~ ~ ~15 ~
execute if score @s turnTimer matches 71..100 run tp @s ~ ~ ~ ~30 ~
execute if score @s display matches 0 run function main:deck_builder/expansion/open/pack/0
execute if score @s display matches 1 run function main:deck_builder/expansion/open/pack/1
execute if score @s display matches 2 run function main:deck_builder/expansion/open/pack/2
execute if score @s display matches 3 run function main:deck_builder/expansion/open/pack/3
execute if score @s display matches 4 run function main:deck_builder/expansion/open/pack/4
execute if score @s display matches 5 run function main:deck_builder/expansion/open/pack/5
execute if score @s display matches 6 run function main:deck_builder/expansion/open/pack/6
execute if score @s display matches 7 run function main:deck_builder/expansion/open/pack/7
execute if score @s display matches 8 run function main:deck_builder/expansion/open/pack/8
execute if score @s display matches 9 run function main:deck_builder/expansion/open/pack/9
execute if score @s display matches 10 run function main:deck_builder/expansion/open/pack/10

execute if score @s turnTimer matches 100 run function main:deck_builder/expansion/open/finish
