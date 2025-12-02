## Place a sculk block
playsound block.sculk.place master @a[tag=id] ~ ~ ~ 1 0.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~-1 ~1 ~-1 ~1 ~1 ~1 sculk replace air
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~ ~2 ~ ~ ~2 ~ sculk_shrieker[can_summon=false] replace air
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add blocked
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add block
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add filled
