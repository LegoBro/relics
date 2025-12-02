## Place a lightning rod
playsound block.copper.place master @a[tag=id] ~ ~ ~ 1 0.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~-1 ~1 ~-1 ~1 ~1 ~1 waxed_copper_block replace air
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~ ~2 ~ ~ ~2 ~ lightning_rod replace air
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add blocked
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add block
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add filled
