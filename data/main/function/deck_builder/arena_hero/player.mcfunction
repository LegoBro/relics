## Selection
item replace block ~ ~ ~ container.20 with jigsaw[item_name={"translate":"arena","color":"green","italic":false}]
item replace block ~ ~ ~ container.22 with music_disc_mall[item_name={"translate":"music","color":"green","italic":false}]
item replace block ~ ~ ~ container.24 with creeper_head[item_name={"translate":"hero","color":"green","italic":false}]

scoreboard players operation #pre_arena var = @s set.arena
scoreboard players operation #pre_music var = @s set.music
scoreboard players operation #pre_hero var = @s set.hero

item replace block 0 0 0 container.26 with air
item replace block 0 0 0 container.26 from entity @s player.cursor
execute if items block 0 0 0 container.26 structure_block unless score @s menu.ah matches 1..2 store result score @s set.arena run data get block 0 0 0 Items[{Slot:26b}].components."minecraft:custom_data".Arena
execute if items block 0 0 0 container.26 music_disc_cat if score @s menu.ah matches 1 store result score @s set.music run data get block 0 0 0 Items[{Slot:26b}].components."minecraft:custom_data".music
execute if items block 0 0 0 container.26 player_head if score @s menu.ah matches 2 store result score @s set.hero run data get block 0 0 0 Items[{Slot:26b}].components."minecraft:custom_data".Hero
item replace block 0 0 0 container.26 with air




execute if items entity @s player.cursor * run function main:deck_builder/arena_hero/update

clear @s player_head
clear @s structure_block
clear @s music_disc_cat


clear @s jigsaw
clear @s music_disc_mall
clear @s creeper_head

