## Enables tournament mode for all players
scoreboard players set #tournamentLobby var 1
tellraw @a [{"text":"Tournament mode enabled!","color":"gold"}]
tellraw @a [{"text":"If you don't have the tournament deck, try: /trigger reset set 10","color":"red"}]
execute as @a at @s run playsound entity.ender_dragon.death master @s 1 2 0

tellraw @s "To disable cheat codes interferring with tournament mode, please run: /scoreboard players set #prevent_tournaments var 1"
