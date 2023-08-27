## Ticks for epicness
# ID grabbing
tag @e remove id
scoreboard players operation game.id var = @s id
execute as @e if score @s id = game.id var run tag @s add id

scoreboard players add @s turnTimer 1

## Safety method?
tag @a[tag=id,tag=winner] remove loser

title @a[tag=id] times 0 50 50
title @a[tag=id] subtitle ""
execute if score @s turnTimer matches 1 as @a[tag=id,tag=winner] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.75
execute if score @s turnTimer matches 1 run title @a[tag=id,tag=winner] title {"text":"V","color":"gold"}
execute if score @s turnTimer matches 5 run title @a[tag=id,tag=winner] title {"text":"Vi","color":"gold"}
execute if score @s turnTimer matches 10 run title @a[tag=id,tag=winner] title {"text":"Vic","color":"gold"}
execute if score @s turnTimer matches 15 run title @a[tag=id,tag=winner] title {"text":"Vict","color":"gold"}
execute if score @s turnTimer matches 20 run title @a[tag=id,tag=winner] title {"text":"Victo","color":"gold"}
execute if score @s turnTimer matches 25 run title @a[tag=id,tag=winner] title {"text":"Victor","color":"gold"}
execute if score @s turnTimer matches 30 run title @a[tag=id,tag=winner] title {"text":"Victory","color":"gold"}

execute if score @s turnTimer matches 1 as @a[tag=id,tag=loser] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 0
execute if score @s turnTimer matches 1 run title @a[tag=id,tag=loser] title {"text":"D","color":"red"}
execute if score @s turnTimer matches 5 run title @a[tag=id,tag=loser] title {"text":"De","color":"red"}
execute if score @s turnTimer matches 10 run title @a[tag=id,tag=loser] title {"text":"Def","color":"red"}
execute if score @s turnTimer matches 15 run title @a[tag=id,tag=loser] title {"text":"Defe","color":"red"}
execute if score @s turnTimer matches 20 run title @a[tag=id,tag=loser] title {"text":"Defea","color":"red"}
execute if score @s turnTimer matches 25 run title @a[tag=id,tag=loser] title {"text":"Defeat","color":"red"}

execute if score @s turnTimer matches 100 as @a[tag=id,tag=winner] run function main:board/win/end
