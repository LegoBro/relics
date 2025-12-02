## Selection

execute store result score #head var run clear @s player_head 0
execute if score #head var matches 1.. run function main:deck_builder/arena_hero/player/head

scoreboard players operation #pre_arena var = @s set.arena
execute store result score #head var run clear @s moss_block{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 0
execute store result score #head var run clear @s netherrack{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 1
execute store result score #head var run clear @s end_stone{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 2
execute store result score #head var run clear @s deepslate{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 3
execute store result score #head var run clear @s iron_ore{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 4
execute store result score #head var run clear @s quartz_bricks{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 5
execute store result score #head var run clear @s sea_lantern{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 6
execute store result score #head var run clear @s amethyst_block{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 7
execute store result score #head var run clear @s redstone_block{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 8
execute store result score #head var run clear @s stripped_oak_log{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 9
execute store result score #head var run clear @s mossy_cobblestone{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 10
execute store result score #head var run clear @s dark_oak_planks{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 11
execute store result score #head var run clear @s prismarine{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 12
execute store result score #head var run clear @s mangrove_roots{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 13
execute store result score #head var run clear @s cherry_leaves{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 14
execute store result score #head var run clear @s barrel{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 15
execute store result score #head var run clear @s honeycomb{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 16
execute store result score #head var run clear @s tnt{Arena:true}
execute if score #head var matches 1.. run scoreboard players set @s set.arena 17

scoreboard players operation #pre_music var = @s set.music
execute store result score #head var run clear @s music_disc_cat{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 0
execute store result score #head var run clear @s music_disc_pigstep{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 1
execute store result score #head var run clear @s music_disc_mall{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 2
execute store result score #head var run clear @s music_disc_5{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 3
execute store result score #head var run clear @s music_disc_chirp{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 4
execute store result score #head var run clear @s music_disc_strad{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 5
execute store result score #head var run clear @s music_disc_wait{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 6
execute store result score #head var run clear @s music_disc_mellohi{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 7
execute store result score #head var run clear @s music_disc_blocks{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 8
execute store result score #head var run clear @s music_disc_relic{music:true}
execute if score #head var matches 1.. run scoreboard players set @s set.music 9

execute at @s unless score #pre_arena var = @s set.arena run playsound minecraft:item.bundle.drop_contents master @s ~ ~ ~ 1 0
execute at @s unless score #pre_arena var = @s set.arena run playsound minecraft:block.netherite_block.place master @s

execute at @s unless score #pre_music var = @s set.music run playsound minecraft:block.netherite_block.place master @s
execute at @s unless score #pre_music var = @s set.music run playsound minecraft:block.note_block.banjo master @s