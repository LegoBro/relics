## Executes necessary end of turn tasks as all entities on board

execute store result score #friendly var if entity @e[type=armor_stand,tag=board,tag=id,limit=1,distance=..1.5,sort=nearest,tag=friendly]
execute if score #friendly var matches 1 run tag @e[type=armor_stand,tag=board,tag=id,limit=1,distance=..1.5,sort=nearest,tag=!movable] add vibration_signal
execute unless entity @s[tag=unselectable] run tag @e[type=armor_stand,tag=board,tag=id,limit=1,distance=..1.5,sort=nearest] add movable

# Removes tags from misc:
tag @s remove building.targets

# Apply damage from DOTs
scoreboard players set #damage var 1
execute if score @s fire_resistance matches 1.. run scoreboard players set @s fire 0
execute if score @s[tag=!fire_proof] fire matches 1.. run function main:board/end_turn/apply_damage/fire
execute if score @s[tag=!poison_proof] poison matches 1.. run function main:board/end_turn/apply_damage/poison
execute if score @s[tag=!wither_proof] wither matches 1.. run function main:board/end_turn/apply_damage/wither

execute if score @s invisibility matches 1.. run scoreboard players remove @s invisibility 1
execute if score @s speed_pot matches 1.. run scoreboard players remove @s speed_pot 1
execute if score @s strength matches 1.. run scoreboard players remove @s strength 1
execute if score @s fire_resistance matches 1.. run scoreboard players remove @s fire_resistance 1
execute if score @s weakness matches 1.. run scoreboard players remove @s weakness 1
execute if score @s blindness matches 1.. run scoreboard players remove @s blindness 1
execute if score @s slowness matches 1.. run scoreboard players remove @s slowness 1

execute if score @s spear matches 1 run item replace entity @s weapon with air
execute if score @s spear matches 1.. run scoreboard players remove @s spear 1


execute if score #player var matches 0 if score #cards_turn var matches 0 if score #hurt_hero var matches 1.. if entity @s[tag=card.hero,tag=hero.1] run function main:board/end_turn/apply_damage/hero_no_card
execute if score #player var matches 1 if score #cards_turn var matches 0 if score #hurt_hero var matches 1.. if entity @s[tag=card.hero,tag=hero.2] run function main:board/end_turn/apply_damage/hero_no_card

tag @s[tag=moved_minecart] add in_minecart
tag @s remove moved_minecart

# Display
kill @e[type=area_effect_cloud,tag=display_health,tag=id]


# dict for special cases
execute if score @s health matches 1.. run function cards:entity/end_turn/macro with entity @s data
