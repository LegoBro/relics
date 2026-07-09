## Ticks for player

# This detects if the other player exists, 
#   if not, then main player can perform actions until they run out of time, 
#       and then they get "frozen" until player reconnects or time runs out
execute store result score #player_presence var if entity @p[tag=id,distance=0.1..]
# Overwrite if tutorial
execute if score #is_tutorial var matches 1.. run scoreboard players set #player_presence var 1
execute if score #player_presence var matches 0 run return run function main:board/player/leave

execute as @a[tag=id,tag=turn] if score @s turnTimer matches 0.. run function main:board/player/out_of_time

execute if entity @s[tag=turn] run function main:player/raycast
execute if entity @s[tag=turn] if score @s turnTimer matches -300..0 at @s run function main:board/player/timer/display
# no ending turn if enemy doesn't exist

execute if score @s[tag=turn] endTurn matches 1.. run function main:board/end_turn

function main:player/saturation

execute if score @s forfeit matches 1.. run function main:player/forfeit

## If the player rejoined, then let's go ahead and tidy this up
scoreboard players set @s leaveTimer 0