## Ticks for player

execute if entity @s[tag=turn] run function main:player/raycast
execute if entity @s[tag=turn] if score @s turnTimer matches -300..0 at @s run function main:board/player/timer/display
execute if score @s[tag=turn] endTurn matches 1.. run function main:board/end_turn

function main:player/saturation

execute if score @s forfeit matches 1.. run function main:player/forfeit