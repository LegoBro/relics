## Applies damage to an entity

# Detect if entity was killed (useful for advancements)
scoreboard players set #killed var 0

# DOT (applied later)
# health if no armor
execute unless score @s armor matches 1.. run scoreboard players operation @s health -= #damage var
execute unless score @s armor matches 1.. run execute if score @s health matches 1.. at @s run function cards:entity/damage_dict


# armor instead
execute if score @s armor matches 1.. run playsound entity.item.break hostile @a[tag=id] ~ ~ ~ 1 0 1
execute if score @s armor matches 1.. run scoreboard players operation @s armor -= #damage var
execute if score @s armor matches ..-1 run scoreboard players set @s armor 0

execute if score @s[tag=card.entity] health matches ..0 at @s run function cards:entity/death
execute if score @s[tag=card.building] health matches ..0 at @s run function cards:building/death

# Display
kill @e[type=area_effect_cloud,tag=display_health,tag=id]

tellraw @a[tag=id] [{"selector":"@s"},{"text":" took ","color":"white"},{"score":{"name":"#damage","objective":"var"},"bold":true,"color":"white"},{"text":" damage","color":"white"}]
execute if score @s[tag=teleport] health matches 1.. at @s[tag=!in_minecart,tag=!moved_minecart] run function cards:entity/end/teleport
