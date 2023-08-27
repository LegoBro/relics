## Place a cobblestone block
playsound block.stone.place master @a[tag=id] ~ ~ ~ 1 0.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] positioned ~ ~1 ~ run function cards:consumable/defend/bee_hive/set
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add blocked
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add block
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add filled
