## Use malleable slot

loot insert 0 0 1 mine 0 0 1 minecraft:stone[custom_data={drop_contents:1b}]

item replace block 0 0 0 container.0 from entity @s enderchest.1
scoreboard players set #change var 1

function cards:store_dict

item replace entity @s enderchest.1 from block 0 0 0 container.0

function main:deck_builder/card_manager/update/store




setblock 0 0 1 air
setblock 0 0 1 yellow_shulker_box