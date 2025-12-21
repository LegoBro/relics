## Draws a card from below their hero
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1.5 1

setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box


execute store result score #length var run data get block ~ ~-2 ~ Items
execute if score #length var matches 0 run function main:player/use_card/refill
execute if score #length var matches 1.. run scoreboard players remove @s saturation 2
execute if score #length var matches 1.. run function main:player/draw_card/random
#execute if score #length var matches 1.. run data modify block 0 0 0 Items[0].Slot set value "0b"
execute if score #length var matches 1.. run loot give @s mine 0 0 0 minecraft:stone[custom_data={drop_contents:1b}]
