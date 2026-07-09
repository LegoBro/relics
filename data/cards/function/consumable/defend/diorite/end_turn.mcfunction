# BLINDNESS

function card:helper/get_adjacent_board

execute at @e[tag=id,tag=is_adjacent,distance=..100,limit=1,sort=random] run scoreboard players set @n[tag=id,tag=card.entity,distance=..1.5] blindness 1