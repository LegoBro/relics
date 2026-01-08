# hit with anvil
playsound minecraft:block.brewing_stand.brew hostile @a[tag=id] ~ ~ ~ 1 1.5 1
tag @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=!movable,tag=id,limit=1] add movable

function cards:consumable/generic/use_potion