# Draw random card(s)
playsound minecraft:block.smithing_table.use master @a[tag=id] ~ ~ ~ 1 0 1
playsound block.beacon.deactivate master @a[tag=id] ~ ~ ~ 1 0 1

# Count piglins on board
scoreboard players set #armor var 0
execute as @e[tag=card.entity,tag=id] run scoreboard players operation #armor var += @s armor
execute as @e[tag=card.entity,tag=id] run scoreboard players set @s armor 0

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run scoreboard players operation @s armor = #armor var
kill @e[type=area_effect_cloud,tag=rename,tag=id]
