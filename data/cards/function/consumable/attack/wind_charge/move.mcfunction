## Moves each unit away from hovered.slot
# Looking at usage spot, but go negative direction
execute facing entity @n[type=armor_stand,tag=hovered.slot,tag=id,distance=..100] feet positioned ^ ^ ^-4 run tag @e[tag=id,tag=board,tag=!draw_pile,tag=!discard_pile,tag=!filled,limit=1,distance=..1.5] add destination
# Cancel if no destination
execute unless entity @n[tag=destination,tag=id,distance=..100] run return fail

tag @s add moving
tag @e[tag=board,limit=1,distance=..1.5] add start
tag @e[tag=id,tag=destination] add movable.skip
function cards:entity/move
tag @e[tag=id,tag=movable.skip] remove movable.skip

