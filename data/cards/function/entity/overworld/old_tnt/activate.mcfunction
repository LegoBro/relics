## Place a cobblestone block
#playsound block.tnt.place master @a[tag=id] ~ ~ ~ 1 1.5 1
playsound minecraft:entity.tnt.primed master @a[tag=id] ~ ~ ~ 1 1.5 1

execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~ ~1 ~ ~ ~1 ~ tnt replace air

tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add tnt
scoreboard players set @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] tnt 3
