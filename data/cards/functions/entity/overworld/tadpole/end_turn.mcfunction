## End of turn = maybe hatch
scoreboard players add @s turnCount 1

execute if score @s turnCount matches 3.. run function cards:entity/overworld/tadpole/hatch
