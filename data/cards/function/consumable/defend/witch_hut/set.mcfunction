## Place the building down
fill ~1 ~ ~1 ~-1 ~ ~-1 oak_log
fill ~ ~ ~1 ~ ~ ~-1 air
fill ~1 ~ ~ ~-1 ~ ~ air

fill ~1 ~1 ~1 ~-1 ~1 ~-1 spruce_planks
fill ~ ~1 ~1 ~ ~1 ~-1 spruce_slab
fill ~1 ~1 ~ ~-1 ~1 ~ spruce_slab

setblock ~ ~2 ~ spruce_planks

fill ~1 ~2 ~-1 ~-1 ~2 ~-1 spruce_stairs[facing=south]
fill ~1 ~2 ~1 ~-1 ~2 ~1 spruce_stairs[facing=north]
setblock ~1 ~2 ~ spruce_stairs[facing=west]
setblock ~-1 ~2 ~ spruce_stairs[facing=east]
