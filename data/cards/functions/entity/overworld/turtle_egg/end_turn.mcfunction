## End of turn = maybe hatch
scoreboard players add @s turnCount 1

execute if score @s turnCount matches 6.. run function cards:entity/overworld/turtle_egg/hatch
