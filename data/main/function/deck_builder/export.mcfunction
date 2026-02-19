## Shares current hand as string in writable book
tag @e remove id
scoreboard players operation #id var = @s id
execute as @e if score @s id = #id var run tag @s add id
clear @s writable_book
clear @s written_book
function helper:deck/clone/inventory_to_shulker
execute unless function helper:deck/clone/shulker_to_data run return run function main:deck_builder/io/fail_export

playsound minecraft:block.respawn_anchor.deplete
scoreboard players set @s menu 0
function main:arena/create/deck_builder/store/start

function helper:deck/clone/data_to_book