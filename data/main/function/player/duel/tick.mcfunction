## Ticks players awaiting duel stuff

## See if duel target still exists, otherwise exit duel
scoreboard players operation #id var = @s duel.id
execute as @a[team=lobby,scores={duel.timer=..0},distance=0.1..] if score @s duel.id = #id var run tag @s add duel.target
execute unless entity @a[tag=duel.target] run function main:player/duel/reset
tag @a remove duel.target

title @s[tag=!duel_invited] actionbar {"translate":"duel.awaiting","color":"blue"}
item replace entity @s[tag=!duel_invited] hotbar.0 with air
execute if score @s[tag=!duel_invited] endTurn matches 1.. run function main:player/duel/reset


title @s[tag=duel_invited] actionbar {"translate":"duel.pending","color":"blue"}
execute if score @s[tag=duel_invited] rightClick matches 1.. run function main:player/duel/accept
execute if score @s[tag=duel_invited] endTurn matches 1.. run function main:player/duel/deny
