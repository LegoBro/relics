## Place a cobblestone block
execute as @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] run function cards:consumable/defend/cobweb_trap/trigger_message
tag @s remove cobweb_trap
scoreboard players add @e[tag=card.entity,tag=moving,tag=id,limit=1,sort=nearest] slowness 7
playsound minecraft:block.honey_block.fall hostile @a[tag=id] ~ ~ ~ 10 0 1
