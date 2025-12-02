## Load in the player stuff
gamemode adventure @s
tp @s 8 200 8
tag @s add loaded
tag @s remove tournament
execute unless score #tournamentLobby var matches 1 run function main:arena/create/deck_builder/new_player_deck
execute if score #tournamentLobby var matches 1 run function main:arena/create/deck_builder/tournament_deck
team join lobby @s
gamemode adventure @s
scoreboard players set @s id -1
scoreboard players set @s setting -1
scoreboard players set @s set.mode 0
scoreboard players set @s set.handSize 5
scoreboard players set @s set.time 0
scoreboard players set @s set.fatigue 0
scoreboard players set @s menu 0
scoreboard players set @s deck -1

execute if entity @s[name="LegoBro"] run advancement grant @s only main:quests/deckmaster