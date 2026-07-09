# Begin win condition
tag @e[type=armor_stand,tag=board.center,tag=!tutorial,tag=!end,tag=id] add end
tag @s add winner
execute if entity @s[tag=player.1] run tag @a[tag=id,tag=player.2] add loser
execute if entity @s[tag=player.2] run tag @a[tag=id,tag=player.1] add loser
scoreboard players set @e[type=armor_stand,tag=board.center,tag=id] turnTimer 0

# Copy players scores
scoreboard players operation #PlayerA rating = @n[type=armor_stand,tag=board.center,limit=1,tag=id] ratingA
scoreboard players operation #PlayerB rating = @n[type=armor_stand,tag=board.center,limit=1,tag=id] ratingB

# Player A = 1, B = 2
execute if entity @s[tag=player.1] run scoreboard players set #OUT.K var 10000
execute if entity @s[tag=player.2] run scoreboard players set #OUT.K var 0
function helper:elo/calculate

# Copy Scores Back
scoreboard players operation @s[tag=player.1] rating = #PlayerA rating
scoreboard players operation @s[tag=player.2] rating = #PlayerB rating
execute if entity @p[tag=id,tag=loser,tag=player.1] run return run scoreboard players operation @p[tag=id,tag=loser] rating = #PlayerA rating
execute if entity @p[tag=id,tag=loser,tag=player.2] run return run scoreboard players operation @p[tag=id,tag=loser] rating = #PlayerB rating

# Reset player's match ID
scoreboard players reset @s match.id

## Logic for if they left... PlayerB rating
# Copies player name to elo:new_change
execute if entity @s[tag=player.2] run data modify storage elo:new_change name set from entity @n[type=text_display,tag=id,tag=player.1.name] text.insertion
execute if entity @s[tag=player.1] run data modify storage elo:new_change name set from entity @n[type=text_display,tag=id,tag=player.2.name] text.insertion

execute if entity @s[tag=player.2] store result storage elo:new_change score int 1 run scoreboard players get #PlayerA rating
execute if entity @s[tag=player.1] store result storage elo:new_change score int 1 run scoreboard players get #PlayerB rating

function main:board/win/offline_elo with storage elo:new_change


#data modify storage helper:elo_left 