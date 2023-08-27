## Win
tag @s remove loser
tellraw @a [{"selector":"@s"},{"translate":"game.win"}]
scoreboard players add @s wins 1
scoreboard players add @s winstreak 1
function main:player/advancement/reward/win

execute if score @e[tag=board.center,tag=id,limit=1] turnCost matches ..19 run advancement grant @s only main:quests/ambush
execute if entity @s[tag=player.1] if score @e[tag=hero.1,tag=id,limit=1] health matches 15.. run advancement grant @s only main:quests/defend
execute if entity @s[tag=player.2] if score @e[tag=hero.2,tag=id,limit=1] health matches 15.. run advancement grant @s only main:quests/defend

execute if score @p[tag=id,tag=loser] set.hero matches 8 run advancement grant @s only main:quests/deckmaster

scoreboard players add @a[tag=id,tag=loser] losses 1
scoreboard players reset @a[tag=id,tag=loser] winstreak
execute as @a[tag=id,tag=loser] run function main:player/advancement/reward/lose

execute as @a[tag=id,scores={tnt.kills=10..}] run advancement grant @s only main:quests/tnt

#playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.75
clear @a[tag=id]
tag @a[tag=id] remove winner
tag @a[tag=id] remove loser
function main:arena/create/arena/exit
