execute store result score #count var run data get block 0 0 0 Items[0].tag.Collection[{id:32}].count
scoreboard players operation #count var += #change var
execute unless data block 0 0 0 Items[0].tag.Collection[{id:32}] run data modify block 0 0 0 Items[0].tag.Collection append value {count:0,id:32}
execute store result block 0 0 0 Items[0].tag.Collection[{id:32}].count int 1 run scoreboard players get #count var