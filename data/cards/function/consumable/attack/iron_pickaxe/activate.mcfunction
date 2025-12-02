# hit with anvil
playsound block.anvil.land master @a[tag=id] ~ ~ ~ 10 2 1
scoreboard players set #damage var 5
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] as @e[tag=card.building,tag=id,limit=1,sort=nearest] run function cards:entity/apply_damage
