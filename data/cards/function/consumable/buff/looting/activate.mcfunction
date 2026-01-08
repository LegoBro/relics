# hit with anvil
playsound minecraft:block.enchantment_table.use hostile @a[tag=id] ~ ~ ~ 1 1.5 1
tag @p[tag=id,tag=turn] add looting

function cards:consumable/generic/use_enchantment