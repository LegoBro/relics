## Applies damage to an entity

# DOT (applied later)
# health if no armor
scoreboard players operation #health var = @s health
scoreboard players operation #armor var = @s armor

execute unless score #armor var matches 1.. run scoreboard players operation #health var -= #damage var
execute unless score #armor var matches 1.. if score #health var matches 1.. at @s run function cards:entity/display/health_change
execute if score #health var matches ..0 at @s run function cards:entity/display/death


# armor instead
execute if score #armor var matches 1.. run scoreboard players operation #armor var -= #damage var
execute if score #armor var matches 1.. run function cards:entity/display/armor_change
execute if score @s armor matches 1.. if score #armor var matches ..0 run function cards:entity/display/armor_destroy


# Display
#kill @e[type=area_effect_cloud,tag=display_health,tag=id]

#execute if score @s[tag=card.end] health matches 1.. at @s run function cards:entity/end/teleport
