
setblock ~ -64 ~ barrier
setblock ~ -63 ~ anvil

execute positioned ~.5 -62 ~.5 if entity @s[distance=0.5..] run tp @s ~ ~ ~
execute store result score #test var run clear @s brown_shulker_box 0

execute if score #test var matches 0 run item replace entity @s hotbar.0 from entity @s enderchest.0

execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{Collection:[{}]}}]}] run function main:deck_builder/load