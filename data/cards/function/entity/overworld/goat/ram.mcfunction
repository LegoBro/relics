#say ram
tp @s ~ ~ ~ ~ ~
#particle minecraft:block_marker barrier ~ ~5 ~
tag @e[tag=start,tag=id] remove start
execute as @e[tag=target,tag=id] run function cards:entity/apply_damage
tag @e[tag=board,tag=ram_start,tag=id] add start

tag @e[tag=target,tag=id] remove target

execute rotated ~ 0 positioned ^ ^ ^4 if entity @e[tag=id,tag=board,tag=filled,distance=..1.5,limit=1] run tag @e[tag=attackable,tag=id,distance=..2.5,limit=1] add target
execute if entity @e[tag=target,tag=id] run tag @s add attacker
#say Target: @e[tag=target,tag=id]

execute unless entity @e[tag=target,tag=id] rotated ~ 0 positioned ^ ^ ^4 run tag @e[tag=id,tag=board,distance=..1.5,limit=1,tag=!draw_pile,tag=!board.player.1,tag=!board.player.2,tag=!discard_pile] add destination
execute if entity @e[tag=destination,tag=id] run tag @s add moving
#say Dest: @e[tag=destination,tag=id]
#say Start: @e[tag=start,tag=id]

execute unless entity @e[tag=target,tag=id] unless entity @e[tag=destination] at @e[tag=id,tag=start,tag=board] run function cards:entity/death
execute unless entity @e[tag=target,tag=id] if entity @e[tag=destination,tag=id] at @s rotated ~ 0 positioned ^ ^ ^4 run function cards:entity/move
execute if entity @e[tag=target,tag=id] at @s rotated ~ 0 positioned ^ ^ ^4 run function cards:entity/overworld/goat/ram

tag @e[tag=start,tag=id] remove start
tag @e[tag=ram_start,tag=id] remove ram_start
