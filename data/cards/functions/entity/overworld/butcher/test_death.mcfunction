scoreboard players set #butcher var 0
execute if entity @s[tag=chicken] run scoreboard players set #butcher var 1
execute if entity @s[tag=pig] run scoreboard players set #butcher var 1
execute if entity @s[tag=sheep] run scoreboard players set #butcher var 1
execute if entity @s[tag=mooshroom] run scoreboard players set #butcher var 1

execute if score #butcher var matches 1 as @e[tag=id,tag=butcher] run function cards:entity/overworld/butcher/emerald_payout