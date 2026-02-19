## Use malleable slot

loot insert 0 0 1 mine 0 0 1 minecraft:stone[custom_data={drop_contents:1b}]

item replace block 0 0 0 container.0 from entity @s enderchest.1
scoreboard players set #change var 1

execute store result score #card_id var run data get block 0 0 1 Items[0].components."minecraft:custom_data".card.id
function cards:id_dict {command:"change"}

item replace entity @s enderchest.1 from block 0 0 0 container.0

function main:deck_builder/card_manager/update/store




setblock 0 0 1 air
setblock 0 0 1 yellow_shulker_box