## Deny an invite
scoreboard players operation #id var = @s duel.id
execute as @a[team=lobby] if score @s duel.id = #id var run function main:player/duel/end
