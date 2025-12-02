## Place a cobblestone block
execute as @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] run function cards:consumable/defend/wither_trap/trigger_message
tag @s remove wither_trap
scoreboard players add @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] wither 6
#playsound minecraft:block.honey_block.fall hostile @a[tag=id] ~ ~ ~ 10 2 1
playsound minecraft:block.fungus.step master @a[tag=id] ~ ~ ~ 1 0 1
