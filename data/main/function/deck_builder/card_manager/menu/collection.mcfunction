# Menu handling for looking at collection
execute store result score #left var run clear @s coal
execute store result score #search var run clear @s spyglass
execute store result score #right var run clear @s charcoal
execute store result score #locked var run clear @s iron_nugget
execute store result score #card var run clear @s carrot_on_a_stick[custom_data~{gui:True}] 0
execute store result score #none var run clear @s stick


execute if score #left var matches 1.. run function main:deck_builder/card_manager/menu/collection/left
execute if score #search var matches 1.. run function main:deck_builder/card_manager/menu/collection/search
execute if score #right var matches 1.. run function main:deck_builder/card_manager/menu/collection/right
execute if score #card var matches 1.. run function main:deck_builder/card_manager/menu/collection/card
execute if score #locked var matches 1.. run function main:deck_builder/card_manager/menu/collection/locked
execute if score #none var matches 1.. run function main:deck_builder/card_manager/menu/collection/none
