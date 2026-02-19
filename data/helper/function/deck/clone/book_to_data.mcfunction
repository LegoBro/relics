## Copy book code back into data

execute if items entity @s weapon.mainhand writable_book run data modify storage helper:deck raw_deck set from entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw
execute if items entity @s weapon.mainhand written_book run data modify storage helper:deck raw_deck set from entity @s SelectedItem.components."minecraft:written_book_content".pages[0].raw
function helper:deck/clone/book_to_data_macro with storage helper:deck
## Verify that the deck is the right size
execute store result score #deck.data_size var run data get storage helper:deck deck
data remove storage helper:deck raw_deck
## Output if the deck size is valid
execute if score #deck.data_size var matches 27 run return 1
return fail