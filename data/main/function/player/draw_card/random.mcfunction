## Picks a random card and does the stuff that needs to be done
#tag @s add redraw
execute store result score #rand var run random value 0..26
#scoreboard players set #rand var 0


execute if score #rand var matches 0 if items block ~ ~-2 ~ container.0 * run return run function main:player/draw_card/random/0
execute if score #rand var matches 1 if items block ~ ~-2 ~ container.1 * run return run function main:player/draw_card/random/1
execute if score #rand var matches 2 if items block ~ ~-2 ~ container.2 * run return run function main:player/draw_card/random/2
execute if score #rand var matches 3 if items block ~ ~-2 ~ container.3 * run return run function main:player/draw_card/random/3
execute if score #rand var matches 4 if items block ~ ~-2 ~ container.4 * run return run function main:player/draw_card/random/4
execute if score #rand var matches 5 if items block ~ ~-2 ~ container.5 * run return run function main:player/draw_card/random/5
execute if score #rand var matches 6 if items block ~ ~-2 ~ container.6 * run return run function main:player/draw_card/random/6
execute if score #rand var matches 7 if items block ~ ~-2 ~ container.7 * run return run function main:player/draw_card/random/7
execute if score #rand var matches 8 if items block ~ ~-2 ~ container.8 * run return run function main:player/draw_card/random/8
execute if score #rand var matches 9 if items block ~ ~-2 ~ container.9 * run return run function main:player/draw_card/random/9
execute if score #rand var matches 10 if items block ~ ~-2 ~ container.10 * run return run function main:player/draw_card/random/10
execute if score #rand var matches 11 if items block ~ ~-2 ~ container.11 * run return run function main:player/draw_card/random/11
execute if score #rand var matches 12 if items block ~ ~-2 ~ container.12 * run return run function main:player/draw_card/random/12
execute if score #rand var matches 13 if items block ~ ~-2 ~ container.13 * run return run function main:player/draw_card/random/13
execute if score #rand var matches 14 if items block ~ ~-2 ~ container.14 * run return run function main:player/draw_card/random/14
execute if score #rand var matches 15 if items block ~ ~-2 ~ container.15 * run return run function main:player/draw_card/random/15
execute if score #rand var matches 16 if items block ~ ~-2 ~ container.16 * run return run function main:player/draw_card/random/16
execute if score #rand var matches 17 if items block ~ ~-2 ~ container.17 * run return run function main:player/draw_card/random/17
execute if score #rand var matches 18 if items block ~ ~-2 ~ container.18 * run return run function main:player/draw_card/random/18
execute if score #rand var matches 19 if items block ~ ~-2 ~ container.19 * run return run function main:player/draw_card/random/19
execute if score #rand var matches 20 if items block ~ ~-2 ~ container.20 * run return run function main:player/draw_card/random/20
execute if score #rand var matches 21 if items block ~ ~-2 ~ container.21 * run return run function main:player/draw_card/random/21
execute if score #rand var matches 22 if items block ~ ~-2 ~ container.22 * run return run function main:player/draw_card/random/22
execute if score #rand var matches 23 if items block ~ ~-2 ~ container.23 * run return run function main:player/draw_card/random/23
execute if score #rand var matches 24 if items block ~ ~-2 ~ container.24 * run return run function main:player/draw_card/random/24
execute if score #rand var matches 25 if items block ~ ~-2 ~ container.25 * run return run function main:player/draw_card/random/25
execute if score #rand var matches 26 if items block ~ ~-2 ~ container.26 * run return run function main:player/draw_card/random/26

execute if items block ~ ~-2 ~ container.* * run return run function main:player/draw_card/random
