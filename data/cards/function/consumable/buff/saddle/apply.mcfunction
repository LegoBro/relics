tag @s add has_saddle
item replace entity @s saddle with saddle
execute on passengers run function cards:consumable/buff/saddle/apply
