## Ticks for drafting before a game
tag @e remove id
scoreboard players operation game.id var = @s id
execute as @e if score @s id = game.id var run tag @s add id
tag @e[tag=id,tag=new] remove new
execute as @a[tag=id] if score @s turnCount matches ..26 run function main:board/drafting/player/tick

# Player leaves mid-game = win = forfeit
execute unless entity @a[tag=id,tag=player.2] as @a[tag=id,tag=player.1] run function main:board/win/begin
execute unless entity @a[tag=id,tag=player.1] as @a[tag=id,tag=player.2] run function main:board/win/begin
