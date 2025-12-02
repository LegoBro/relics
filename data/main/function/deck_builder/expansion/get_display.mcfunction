## Gets the display of the pack opener
scoreboard players set @s display -1
#execute if entity @p[tag=id,scores={card_packs=1..}] run scoreboard players set @s display 0
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @p[tag=id] enderchest.0
execute store result score #deck_amount var run data get block 0 0 0 Items[0].tag.Save.Packs
execute unless score #deck_amount var matches 1.. run item replace entity @s armor.head with air
execute unless score #deck_amount var matches 1.. run return 1
execute store result score @s display run data get block 0 0 0 Items[0].tag.Save.Packs[0]

# Display the pack
function main:deck_builder/expansion/display
