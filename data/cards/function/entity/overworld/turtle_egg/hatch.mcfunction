## Hatch egg time

kill @s
execute positioned ~ ~-1 ~ run function cards:entity/overworld/turtle/summon
fill ~ ~ ~ ~ ~ ~ air replace turtle_egg
execute unless score #friendly var matches 1 as @e[type=turtle,tag=new,tag=id] at @s run function cards:helper/not_friendly
