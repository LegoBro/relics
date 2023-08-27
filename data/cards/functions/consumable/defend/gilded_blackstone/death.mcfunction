## Mine the block
playsound block.stone.break master @a[tag=id] ~ ~ ~ 1 1.5 1


execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] if entity @s[tag=friendly] run tag @p[tag=id,tag=turn] add loot_receiver
execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] if entity @s[tag=hostile] run tag @p[tag=id,tag=wait] add loot_receiver

scoreboard players set #rand var 10
execute store result score #cards var run clear @s minecraft:carrot_on_a_stick{card:{}} 0
execute if score #cards var matches ..7 store result score #rand var run loot spawn 0 -200 0 loot cards:0_7
execute if score #rand var matches 0 as @p[tag=id,tag=loot_receiver] run function cards:consumable/buff/golden_apple/discover
execute if score #rand var matches 1 as @p[tag=id,tag=loot_receiver] run function cards:consumable/buff/enchanted_golden_apple/discover
execute if score #rand var matches 2 as @p[tag=id,tag=loot_receiver] run function cards:consumable/buff/golden_carrot/discover
execute if score #rand var matches 3 as @p[tag=id,tag=loot_receiver] run function cards:consumable/buff/golden_armor/discover

tag @a[tag=id,tag=loot_receiver] remove loot_receiver