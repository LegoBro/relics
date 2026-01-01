## Applies damage to an entity

# DOT (applied later)

# health if no armor
scoreboard players operation @s health -= #damage var
execute if score @s[tag=card.entity] health matches ..0 at @s run function cards:entity/death
execute if score @s[tag=card.building] health matches ..0 at @s run function cards:building/death
execute if score @s health matches 1.. at @s run function cards:entity/damage/macro with entity @s data



# Display
kill @e[type=area_effect_cloud,tag=display_health,tag=id]

tellraw @a[tag=id] [{"selector":"@s"},{"text":" took ","color":"white"},{"score":{"name":"#damage","objective":"var"},"bold":true,"color":"white"},{"text":" damage","color":"white"}]
