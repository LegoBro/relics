## Picks a random card and does the stuff that needs to be done
tag @s add redraw
execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_26
#scoreboard players set #rand var 0
execute if score #rand var matches 0 if data block ~ ~-2 ~ {Items:[{Slot:0b}]} run function main:player/draw_card/random/0
execute if score #rand var matches 1 if data block ~ ~-2 ~ {Items:[{Slot:1b}]} run function main:player/draw_card/random/1
execute if score #rand var matches 2 if data block ~ ~-2 ~ {Items:[{Slot:2b}]} run function main:player/draw_card/random/2
execute if score #rand var matches 3 if data block ~ ~-2 ~ {Items:[{Slot:3b}]} run function main:player/draw_card/random/3
execute if score #rand var matches 4 if data block ~ ~-2 ~ {Items:[{Slot:4b}]} run function main:player/draw_card/random/4
execute if score #rand var matches 5 if data block ~ ~-2 ~ {Items:[{Slot:5b}]} run function main:player/draw_card/random/5
execute if score #rand var matches 6 if data block ~ ~-2 ~ {Items:[{Slot:6b}]} run function main:player/draw_card/random/6
execute if score #rand var matches 7 if data block ~ ~-2 ~ {Items:[{Slot:7b}]} run function main:player/draw_card/random/7
execute if score #rand var matches 8 if data block ~ ~-2 ~ {Items:[{Slot:8b}]} run function main:player/draw_card/random/8
execute if score #rand var matches 9 if data block ~ ~-2 ~ {Items:[{Slot:9b}]} run function main:player/draw_card/random/9
execute if score #rand var matches 10 if data block ~ ~-2 ~ {Items:[{Slot:10b}]} run function main:player/draw_card/random/10
execute if score #rand var matches 11 if data block ~ ~-2 ~ {Items:[{Slot:11b}]} run function main:player/draw_card/random/11
execute if score #rand var matches 12 if data block ~ ~-2 ~ {Items:[{Slot:12b}]} run function main:player/draw_card/random/12
execute if score #rand var matches 13 if data block ~ ~-2 ~ {Items:[{Slot:13b}]} run function main:player/draw_card/random/13
execute if score #rand var matches 14 if data block ~ ~-2 ~ {Items:[{Slot:14b}]} run function main:player/draw_card/random/14
execute if score #rand var matches 15 if data block ~ ~-2 ~ {Items:[{Slot:15b}]} run function main:player/draw_card/random/15
execute if score #rand var matches 16 if data block ~ ~-2 ~ {Items:[{Slot:16b}]} run function main:player/draw_card/random/16
execute if score #rand var matches 17 if data block ~ ~-2 ~ {Items:[{Slot:17b}]} run function main:player/draw_card/random/17
execute if score #rand var matches 18 if data block ~ ~-2 ~ {Items:[{Slot:18b}]} run function main:player/draw_card/random/18
execute if score #rand var matches 19 if data block ~ ~-2 ~ {Items:[{Slot:19b}]} run function main:player/draw_card/random/19
execute if score #rand var matches 20 if data block ~ ~-2 ~ {Items:[{Slot:20b}]} run function main:player/draw_card/random/20
execute if score #rand var matches 21 if data block ~ ~-2 ~ {Items:[{Slot:21b}]} run function main:player/draw_card/random/21
execute if score #rand var matches 22 if data block ~ ~-2 ~ {Items:[{Slot:22b}]} run function main:player/draw_card/random/22
execute if score #rand var matches 23 if data block ~ ~-2 ~ {Items:[{Slot:23b}]} run function main:player/draw_card/random/23
execute if score #rand var matches 24 if data block ~ ~-2 ~ {Items:[{Slot:24b}]} run function main:player/draw_card/random/24
execute if score #rand var matches 25 if data block ~ ~-2 ~ {Items:[{Slot:25b}]} run function main:player/draw_card/random/25
execute if score #rand var matches 26 if data block ~ ~-2 ~ {Items:[{Slot:26b}]} run function main:player/draw_card/random/26

execute if data block ~ ~-2 ~ Items[] if entity @s[tag=redraw] run function main:player/draw_card/random
