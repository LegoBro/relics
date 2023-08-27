## Convert a creeper to a charged creeper

tag @s remove creeper
tag @s add charged_creeper
data merge entity @s {powered:1b}
scoreboard players add @a[tag=id,tag=turn] conversions 1
