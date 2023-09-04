## Copies card from player to inventory
setblock 0 0 0 air
setblock 0 0 0 shulker_box
data modify block 0 0 0 Items[] set from entity @s Inventory[0]

execute unless entity @s[nbt={SelectedItem:{tag:{card:{trash:1b}}}}] run loot insert ~ ~-3 ~ mine 0 0 0 minecraft:air{drop_contents:1b}
clear @s

execute store result score #length var run data get block ~ ~-2 ~ Items
tag @s add draft_ignore
execute if score #length var matches ..12 run function main:player/use_card/refill
tag @s remove draft_ignore
