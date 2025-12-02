execute store result score #count var run data get block 0 0 0 Items[0].tag.Collection[{id:130}].count
scoreboard players operation #count var += #change var
execute unless data block 0 0 0 Items[0].tag.Collection[{id:130}] run data modify block 0 0 0 Items[0].tag.Collection append value {count:0,id:130}
execute store result block 0 0 0 Items[0].tag.Collection[{id:130}].count int 1 run scoreboard players get #count var