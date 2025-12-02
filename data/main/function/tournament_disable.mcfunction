## Disables tournament mode for all players
scoreboard players set #tournamentLobby var 0
tellraw @a [{"text":"Tournament mode disabled!  Players who were in the tournament will be reset.","color":"gold"}]
execute as @a at @s run playsound entity.ender_dragon.death master @s 1 2 0
scoreboard players set @a reset 10

tellraw @s "To disable cheat codes interferring with tournament mode, please run: /scoreboard players set #prevent_tournaments var 1"