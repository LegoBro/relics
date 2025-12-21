## Selection

execute store result score #head var run clear @s player_head 0
execute if score #head var matches 1.. run function main:deck_builder/arena_hero/player/head

scoreboard players operation #pre_arena var = @s set.arena
execute store result score #head var run clear @s moss_block[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 0
execute store result score #head var run clear @s netherrack[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 1
execute store result score #head var run clear @s end_stone[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 2
execute store result score #head var run clear @s deepslate[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 3
execute store result score #head var run clear @s iron_ore[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 4
execute store result score #head var run clear @s quartz_bricks[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 5
execute store result score #head var run clear @s sea_lantern[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 6
execute store result score #head var run clear @s amethyst_block[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 7
execute store result score #head var run clear @s redstone_block[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 8
execute store result score #head var run clear @s stripped_oak_log[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 9
execute store result score #head var run clear @s mossy_cobblestone[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 10
execute store result score #head var run clear @s dark_oak_planks[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 11
execute store result score #head var run clear @s prismarine[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 12
execute store result score #head var run clear @s mangrove_roots[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 13
execute store result score #head var run clear @s cherry_leaves[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 14
execute store result score #head var run clear @s barrel[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 15
execute store result score #head var run clear @s honeycomb[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 16
execute store result score #head var run clear @s tnt[custom_data~{Arena:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.arena 17

scoreboard players operation #pre_music var = @s set.music
execute store result score #head var run clear @s music_disc_cat[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 0
execute store result score #head var run clear @s music_disc_pigstep[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 1
execute store result score #head var run clear @s music_disc_mall[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 2
execute store result score #head var run clear @s music_disc_5[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 3
execute store result score #head var run clear @s music_disc_chirp[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 4
execute store result score #head var run clear @s music_disc_strad[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 5
execute store result score #head var run clear @s music_disc_wait[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 6
execute store result score #head var run clear @s music_disc_mellohi[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 7
execute store result score #head var run clear @s music_disc_blocks[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 8
execute store result score #head var run clear @s music_disc_relic[custom_data~{music:true}]
execute if score #head var matches 1.. run scoreboard players set @s set.music 9

execute at @s unless score #pre_arena var = @s set.arena run playsound minecraft:item.bundle.drop_contents master @s ~ ~ ~ 1 0
execute at @s unless score #pre_arena var = @s set.arena run playsound minecraft:block.netherite_block.place master @s

execute at @s unless score #pre_music var = @s set.music run playsound minecraft:block.netherite_block.place master @s
execute at @s unless score #pre_music var = @s set.music run playsound minecraft:block.note_block.banjo master @s