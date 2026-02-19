## Recursive command to create thing
execute store result score #card_id var run data get storage helper:deck deck[0]
execute positioned 0 0 2 run function cards:id_dict {command:"insert_block"}
loot insert 0 0 1 mine 0 0 2 minecraft:stone[custom_data={drop_contents:1b}]
data remove storage helper:deck deck[0]
execute store result score #deck.size var run data get storage helper:deck deck
execute if score #deck.size var matches 1.. run function helper:deck/clone/data_to_shulker_recurse
