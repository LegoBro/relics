## Hatch egg time

kill @s
execute positioned ~ ~-1 ~ run function cards:entity/overworld/frog/summon
execute unless score #friendly var matches 1 as @e[type=turtle,tag=new,tag=id] at @s run function cards:entity/nether/magma_cube/not_friendly
