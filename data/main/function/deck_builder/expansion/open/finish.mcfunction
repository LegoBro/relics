## Finish pack opening
tag @s remove opening
scoreboard players reset @s turnTimer

data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @p[tag=id] enderchest.0
data remove block 0 0 0 Items[0].components."minecraft:custom_data".Save.Packs[0]
item replace entity @p[tag=id] enderchest.0 from block 0 0 0 container.0