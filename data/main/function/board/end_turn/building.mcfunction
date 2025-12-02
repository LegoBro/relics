## Executes necessary end of turn tasks as all entities on board

#execute store result score #friendly var if entity @s[tag=friendly]
#tag @e[type=armor_stand,tag=board,tag=id,limit=1,distance=..1.5,sort=nearest] add movable

# Apply damage from DOTs
scoreboard players set #damage var 1

execute if score @s[tag=!fire_proof] fire matches 1.. run function main:board/end_turn/apply_damage/fire


# Display
kill @e[type=area_effect_cloud,tag=display_health,tag=id]


# dict for special cases
execute if score @s health matches 1.. run function cards:building/end_turn_dict
