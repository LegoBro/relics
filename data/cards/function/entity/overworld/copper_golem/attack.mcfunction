## Attack

## Verify opposite spot is on the board
execute positioned ^ ^ ^-4 positioned ~ ~-1.5 ~ unless entity @n[tag=id,tag=board,distance=..1.5] run return run function cards:entity/overworld/copper_golem/fail_attack
## Can't be building = fail
execute if entity @n[tag=id,tag=target,distance=..100,tag=card.building] run return run function cards:entity/overworld/copper_golem/fail_attack
execute positioned ^ ^ ^-4 if entity @n[tag=id,tag=attackable,distance=..1.5,tag=card.building] run return run function cards:entity/overworld/copper_golem/fail_attack

## Can't be hero = fail
execute if entity @n[tag=id,tag=target,distance=..100,tag=steve] run return run function cards:entity/overworld/copper_golem/fail_attack
execute positioned ^ ^ ^-4 if entity @n[tag=id,tag=attackable,distance=..1.5,tag=steve] run return run function cards:entity/overworld/copper_golem/fail_attack

## Success
# Tag friendlies, useful for moving stats later
function cards:helper/tag_friendlies
function cards:helper/tag_movable

execute positioned ^ ^ ^-4 run tag @n[tag=id,tag=attackable,distance=..1.5] add copper_golem.attack_back

execute positioned ^ ^ ^-4 positioned ~ ~-1.5 ~ run tag @n[tag=id,tag=board,distance=..1.5] add copper_golem.attack_board_back

execute at @n[tag=target,tag=id,distance=..100] run tag @n[tag=id,tag=board,distance=..1.5] add copper_golem.attack_board_front

## Attempt move! - target to back, then back to target
execute at @n[tag=id,tag=copper_golem.attack_board_back,distance=..100] run tp @n[tag=id,tag=target,distance=..100] ~ ~1 ~

execute at @n[tag=id,tag=copper_golem.attack_board_front,distance=..100] run tp @n[tag=id,tag=copper_golem.attack_back,distance=..100] ~ ~1 ~

## Clear moved cells
execute as @n[tag=id,tag=copper_golem.attack_board_back,distance=..100] run function main:board/cell/move/start_clear
execute as @n[tag=id,tag=copper_golem.attack_board_front,distance=..100] run function main:board/cell/move/start_clear

## Copy moved entities friendly and movable to board
execute as @n[tag=id,tag=copper_golem.attack_back,distance=..100] at @s run function cards:helper/entity_to_board
execute as @n[tag=id,tag=target,distance=..100] at @s run function cards:helper/entity_to_board

tag @e[tag=id,distance=..100] remove copper_golem.attack_back
tag @e[tag=id,distance=..100] remove copper_golem.attack_board_back
tag @e[tag=id,distance=..100] remove copper_golem.attack_board_front

#execute as @n[tag=target,tag=id,distance=..100] run 
#tag @e[tag=id,tag=board,tag=!filled,limit=1,distance=..1.5] add destination

playsound minecraft:entity.copper_golem_oxidized.spin master @a[tag=id] ~ ~ ~ 10 1 1
