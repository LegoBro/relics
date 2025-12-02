## Place a cobblestone block
playsound block.stone.place master @a[tag=id] ~ ~ ~ 1 0.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 gilded_blackstone replace air
