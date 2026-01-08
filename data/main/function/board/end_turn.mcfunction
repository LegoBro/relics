## Ends a players turn, and toggles to the other player

# Reset players who have skipped their turn

advancement grant @a[tag=id,scores={saturation=30..},tag=turn] only main:quests/rich

# Unknown advancement
execute as @p[tag=id,tag=turn,advancements={main:quests/unknown=false}] store result score #unknowns var run clear @s minecraft:carrot_on_a_stick[custom_data~{card:{rarity:"unknown"}}] 0
execute as @p[tag=id,tag=turn,advancements={main:quests/unknown=false}] if score #unknowns var >= #set.handSize var run advancement grant @s only main:quests/unknown
# Mansion advancement
execute if entity @p[tag=id,tag=turn,advancements={main:quests/mansion=false}] at @e[tag=card.entity,tag=id,tag=pillager] if entity @e[type=armor_stand,tag=id,tag=friendly,distance=..1.5] at @e[tag=card.entity,tag=id,tag=vindicator] if entity @e[type=armor_stand,tag=id,tag=friendly,distance=..1.5] at @e[tag=card.entity,tag=id,tag=evoker] if entity @e[type=armor_stand,tag=id,tag=friendly,distance=..1.5] at @e[tag=card.entity,tag=id,tag=ravager] if entity @e[type=armor_stand,tag=id,tag=friendly,distance=..1.5] run advancement grant @p[tag=id,tag=turn] only main:quests/mansion
# Ocean advancement
execute as @p[tag=id,tag=turn,advancements={main:quests/ocean=false}] at @e[tag=card.entity,tag=id,tag=water,scores={health=15..}] if entity @e[type=armor_stand,tag=id,tag=friendly,distance=..1.5] run advancement grant @s only main:quests/ocean
# Piston advancement
scoreboard players reset @a[tag=id] play.piston

# Clear looting
tag @a[tag=id] remove looting

# Clear ethereal cards
clear @a[tag=id] *[custom_data~{ethereal:1b}]
execute at @a[tag=id] run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ethereal:1b}}}},distance=..5]

scoreboard players operation @a[tag=id] turnTimer = @e[type=armor_stand,tag=board.center,limit=1,tag=id] set.time
scoreboard players reset @a[tag=id] endTurn
scoreboard players reset @a[tag=id] rightClick
playsound minecraft:block.beacon.deactivate master @a[tag=id,tag=turn] ~ ~ ~ 10 0 1
playsound minecraft:block.beacon.activate master @a[tag=id,tag=wait] ~ ~ ~ 10 2 1

execute store result score #cards var run clear @p[tag=id,tag=turn] minecraft:carrot_on_a_stick[custom_data~{card:{}}] 0
execute store result score #player var if entity @p[tag=id,tag=player.2,tag=turn]
scoreboard players operation #play_turn var = @p[tag=id,tag=turn] play.card.turn

execute store result score #hurt_hero var if entity @e[type=armor_stand,tag=id,tag=board.center,limit=1,tag=noCardHurt]
tag @e[tag=id,tag=vibration_signal] remove vibration_signal

# Count cherry
scoreboard players set #cherry_count var 0
# Count frogs, I know, weird
scoreboard players set #frog_count var 0
execute as @e[tag=card.entity,tag=id,distance=..100] at @s run function main:board/end_turn/entity
execute as @e[tag=card.building,tag=id,distance=..100] at @s run function main:board/end_turn/building

# Frog advancement
execute if entity @p[tag=id,tag=turn,advancements={main:quests/frog=false}] if score #frog_count var matches 15.. run advancement grant @s only main:quests/frog
# Cherry advancement
execute if entity @p[tag=id,tag=turn,advancements={main:quests/zen=false}] if score #cherry_count var matches 2.. run advancement grant @s only main:quests/zen

execute if entity @a[tag=player.1,tag=id,tag=turn] run scoreboard players add @e[type=armor_stand,tag=board.center,limit=1,tag=id,scores={turnCost=..19}] turnCost 1
scoreboard players operation @a[tag=id] saturation = @e[type=armor_stand,tag=board.center,limit=1,tag=id] turnCost
execute as @a[tag=id,tag=wait] run scoreboard players operation @s saturation += @s sat.overflow
execute as @a[tag=id,tag=wait] run scoreboard players reset @s sat.overflow
#execute as @a[tag=id,tag=wait] run function main:player/raycast/select/draw

## Logic behind swapping between friendly and hostile states for placed entity cards
tag @e[type=armor_stand,tag=id,tag=hostile] add toggle
tag @e[type=armor_stand,tag=id,tag=hostile] remove hostile
tag @e[type=armor_stand,tag=id,tag=friendly] add hostile
tag @e[type=armor_stand,tag=id,tag=friendly] remove friendly
tag @e[type=armor_stand,tag=id,tag=toggle] add friendly
tag @e[type=armor_stand,tag=id,tag=toggle] remove toggle
kill @e[type=arrow,distance=..64]
# Paints the card entity so that they look nice when selected later
execute at @e[type=armor_stand,tag=board,tag=friendly,tag=filled,tag=id] run team join green @e[tag=card.entity,tag=id,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=board,tag=hostile,tag=filled,tag=id] run team join red @e[tag=card.entity,tag=id,limit=1,sort=nearest]

## Logic behind swapping between the player taking a turn and the player waiting to take a turn
tag @a[tag=turn,tag=id] add toggle
tag @a[tag=turn,tag=id] remove turn
tag @a[tag=wait,tag=id] add turn
tag @a[tag=wait,tag=id] remove wait
tag @a[tag=toggle,tag=id] add wait
tag @a[tag=toggle,tag=id] remove toggle


tag @e[tag=selected,tag=id] remove selected
execute as @e[tag=board,tag=id] run function main:board/cell/display
title @a[tag=id] times 3 10 5
title @a[tag=id,tag=turn] title {"translate":"game.turn.begin","color":"green"}
title @a[tag=id,tag=wait] title {"translate":"game.turn.end","color":"red"}

scoreboard players set @a[tag=id] play.card.turn 0
scoreboard players remove @a[tag=id,scores={binding_timer=1..}] binding_timer 1
execute as @e[type=armor_stand,tag=board,tag=id,tag=filled] at @s unless entity @e[tag=id,tag=card.entity,distance=..1.5] unless entity @e[tag=id,tag=card.building,distance=..1.5] run function main:board/clear_cell
#tag @e[type=armor_stand,tag=board,tag=id,tag=blocked,tag=!filled] remove blocked
