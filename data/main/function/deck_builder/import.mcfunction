## Take Current book and import it into your hand
tag @e remove id
scoreboard players operation #id var = @s id
execute as @e if score @s id = #id var run tag @s add id
scoreboard players set @s menu 0
execute unless function helper:deck/clone/book_to_data run return run function main:deck_builder/io/fail_import
clear @s writable_book
clear @s written_book
function helper:deck/clone/data_to_shulker
function helper:deck/clone/shulker_convert_gui
function helper:deck/clone/shulker_to_inventory
playsound minecraft:block.respawn_anchor.set_spawn