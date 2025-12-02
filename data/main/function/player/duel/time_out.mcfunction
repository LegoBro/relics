## Accept an invite
scoreboard players reset @s duel.id
scoreboard players reset @s duel.timer
tag @s remove duel_invited
tellraw @s {"translate":"duel.end","color":"red"}
execute at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 0
