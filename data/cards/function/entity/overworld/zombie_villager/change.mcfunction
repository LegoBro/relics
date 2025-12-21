execute store result score #count var run data get block 0 0 0 Items[0].components."minecraft:custom_data".Collection[{id:56}].count
scoreboard players operation #count var += #change var
execute unless data block 0 0 0 Items[0].components."minecraft:custom_data".Collection[{id:56}] run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Collection append value {count:0,id:56}
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Collection[{id:56}].count int 1 run scoreboard players get #count var