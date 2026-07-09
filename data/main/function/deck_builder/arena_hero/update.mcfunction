
data remove block ~ ~ ~ Items
data remove block ~1 ~ ~ Items

execute at @s unless score #pre_arena var = @s set.arena run playsound minecraft:item.bundle.drop_contents master @s ~ ~ ~ 1 0
execute at @s unless score #pre_arena var = @s set.arena run playsound minecraft:block.netherite_block.place master @s

execute at @s unless score #pre_music var = @s set.music run playsound minecraft:block.netherite_block.place master @s
execute at @s unless score #pre_music var = @s set.music run playsound minecraft:block.note_block.banjo master @s

execute at @s unless score #pre_hero var = @s set.hero run playsound minecraft:item.lodestone_compass.lock master @s ~ ~ ~ 1 0
execute at @s unless score #pre_hero var = @s set.hero run playsound entity.item.pickup master @s ~ ~ ~ 1 0

execute if items entity @s player.cursor jigsaw run scoreboard players set @s menu.ah 0
execute if items entity @s player.cursor music_disc_mall run scoreboard players set @s menu.ah 1
execute if items entity @s player.cursor creeper_head run scoreboard players set @s menu.ah 2

item replace block ~ ~ ~ container.20 with jigsaw[item_name={"translate":"arena","color":"green","italic":false}]
item replace block ~ ~ ~ container.22 with music_disc_mall[item_name={"translate":"music","color":"green","italic":false}]
item replace block ~ ~ ~ container.24 with creeper_head[item_name={"translate":"hero","color":"green","italic":false}]

execute at @s run playsound minecraft:ui.loom.take_result master @p[tag=id] ~ ~ ~ 1 1 1

execute unless score @s menu.ah matches 1..2 run return run function main:deck_builder/arena_hero/arena
execute if score @s menu.ah matches 1 run return run function main:deck_builder/arena_hero/music
execute if score @s menu.ah matches 2 run return run function main:deck_builder/arena_hero/hero


