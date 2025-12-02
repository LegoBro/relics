## End of turn = maybe explode
scoreboard players add @s[scores={turnCount=1..}] turnCount 1

execute if score @s turnCount matches 2.. run function cards:entity/overworld/creeper/explode
tag @s remove movable
