# binding
playsound minecraft:block.enchantment_table.use hostile @a[tag=id] ~ ~ ~ 1 0 1
scoreboard players add @p[tag=id,tag=wait] binding_timer 6


function cards:consumable/generic/use_enchantment