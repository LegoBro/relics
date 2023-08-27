## Invite a player to duel
scoreboard players set #raycast var 0
tag @s add duel_invited
scoreboard players operation @s duel.id = #id var
tellraw @p[tag=duel_search] [{"translate":"duel.invite.1","color":"blue"},{"selector":"@s"},{"translate":"duel.invite.2","color":"blue"}]
tellraw @s [{"selector":"@p[tag=duel_search]"},{"translate":"duel.invite.3","color":"blue"}]

execute as @p[tag=duel_search] run scoreboard players operation #set.mode var = @s set.mode
execute as @p[tag=duel_search] run scoreboard players operation #set.time var = @s set.time
execute as @p[tag=duel_search] run scoreboard players operation #set.handSize var = @s set.handSize

execute as @p[tag=duel_search] run function main:player/settings/display


scoreboard players set @s duel.timer -1200
scoreboard players set @p[tag=duel_search] duel.timer -1200
playsound minecraft:coin_earn master @s ~ ~ ~ 1 0
playsound minecraft:coin_earn master @p[tag=duel_search] ~ ~ ~ 1 0
