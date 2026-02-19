execute store result score #count var run data get block 0 0 0 Items[0].components."minecraft:custom_data".Collection[{id:8}].count
scoreboard players operation #count var += #change var
execute if score #count var matches ..-1 run return fail
execute unless data block 0 0 0 Items[0].components."minecraft:custom_data".Collection[{id:8}] run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Collection append value {count:0,id:8}
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Collection[{id:8}].count int 1 run scoreboard players get #count var
return 1