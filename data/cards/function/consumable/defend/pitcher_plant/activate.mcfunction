## Place a cobblestone block
playsound block.grass.place master @a[tag=id] ~ ~ ~ 1 0.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~-1 ~1 ~-1 ~1 ~1 ~1 dirt replace air
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~ ~2 ~ ~ ~2 ~ pitcher_plant replace air
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~ ~3 ~ ~ ~3 ~ pitcher_plant[half=upper] replace air

