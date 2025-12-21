tellraw @s {"translate":"shop.success","color":"green"}
scoreboard players operation @s dubloons -= #price var

playsound minecraft:coin_earn master @s ~ ~ ~ 1 1.5
#scoreboard players add @s card_packs 1

data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
execute store result storage temp Pack int 1 run scoreboard players get #shop display
data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.Packs append from storage minecraft:temp Pack
item replace entity @s enderchest.0 from block 0 0 0 container.0

#data remove block 0 0 0 Items[0].components."minecraft:custom_data".Save.Packs[-1]
