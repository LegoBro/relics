# hit with anvil
playsound minecraft:block.brewing_stand.brew hostile @a[tag=id] ~ ~ ~ 1 1.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run scoreboard players add @s speed_pot 5
kill @e[type=area_effect_cloud,tag=rename,tag=id]
scoreboard players add @s play.potion 1
