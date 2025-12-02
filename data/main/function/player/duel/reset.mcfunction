## Reset duel garbages
scoreboard players reset @s duel.id
scoreboard players reset @s duel.timer
tag @s remove duel_invited
tellraw @s {"translate":"duel.reset","color":"red"}
