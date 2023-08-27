function main:arena/create/deck_builder/store/start
scoreboard players set @s menu 0
data merge block 0 0 0 {Items:[]}
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block 0 0 0 Items set from block ~ ~ ~ Items

execute store result score #inv var run loot give @s mine 0 0 0 air{drop_contents:1b}