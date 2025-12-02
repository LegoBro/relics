## Accept an invite
scoreboard players operation #id var = @s duel.id
execute as @a[team=lobby] if score @s duel.id = #id var run function main:player/duel/start
execute as @a[team=lobby,tag=!duel_invited,tag=game.start] at @s if entity @p[tag=game.start,distance=0.1..] run function main:arena/create/arena
tag @s remove duel_invited
