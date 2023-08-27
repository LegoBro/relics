## Generates a discovered (meaning it won't be saved) card through spawning
playsound block.frogspawn.hatch master @a[tag=id] ~ ~ ~ 1 1 1
execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_2

execute if score #rand var matches 0..2 run function cards:entity/overworld/tadpole/discover
execute if score #rand var matches 0..2 run function cards:entity/overworld/tadpole/discover
execute if score #rand var matches 0..2 run function cards:entity/overworld/tadpole/discover
execute if score #rand var matches 1..2 run function cards:entity/overworld/tadpole/discover
execute if score #rand var matches 2 run function cards:entity/overworld/tadpole/discover
