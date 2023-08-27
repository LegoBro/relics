## Main engine tick
scoreboard players add #GLOBAL world.link 1
execute as @e[type=armor_stand,tag=board.center,tag=!tutorial,tag=!end,tag=!drafting] at @s run function main:board/tick
execute as @e[type=armor_stand,tag=board.center,tag=!tutorial,tag=drafting,tag=!end] at @s run function main:board/drafting/tick
execute as @e[type=armor_stand,tag=board.center,tag=tutorial,tag=!end] at @s run function main:board/tutorial/tick
execute as @e[type=armor_stand,tag=board.center,tag=!tutorial,tag=end] at @s run function main:board/win/tick
execute as @e[tag=animation] at @s run function main:animation/tick
execute as @e[type=armor_stand,tag=deck.builder.anchor] at @s run function main:deck_builder/tick
execute as @a at @s run function main:player/tick
function main:lobby/waiting


## New Lobby display stuff here
#execute as @e[tag=shop.display] at @s run tp @s ~ ~ ~ ~5 ~
#execute as @e[tag=shop.display] at @s if entity @p[distance=..5] run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=follow] at @s run tp @s ~ ~ ~ facing entity @p feet

# Coffeee
particle smoke 17.35 201.1 -3.3 0 0 0 0 1 normal

# GLobal bossbar laziness
bossbar set minecraft:not_turn players @a[team=in_game,tag=wait]
bossbar set minecraft:turn players @a[team=in_game,tag=turn]

execute as @e[type=tnt,tag=!display,tag=card.entity] run data merge entity @s {Fuse:9999}