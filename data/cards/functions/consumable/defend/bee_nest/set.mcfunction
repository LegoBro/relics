## Place the building down
fill ~1 ~ ~1 ~-1 ~ ~-1 oak_planks

fill ~1 ~1 ~1 ~-1 ~1 ~-1 bee_nest
fill ~1 ~1 ~-1 ~-1 ~1 ~-1 bee_nest[facing=south]

setblock ~ ~1 ~-1 minecraft:bee_nest[facing=north]
setblock ~ ~1 ~1 minecraft:bee_nest[facing=south]
setblock ~-1 ~1 ~ minecraft:bee_nest[facing=west]
setblock ~1 ~1 ~ minecraft:bee_nest[facing=east]


fill ~1 ~2 ~1 ~-1 ~2 ~-1 honey_block
