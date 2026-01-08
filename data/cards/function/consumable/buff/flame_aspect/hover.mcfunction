# Flame + Fire Aspect = Flame Aspect

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run scoreboard players operation #entity_range var = @s range

execute if score #entity_range var matches 2.. run title @s actionbar [{text:"+1",color:gold},{text:"🗡",color:white}]
execute if score #entity_range var matches 1 run title @s actionbar [{text:"+2",color:gold},{text:"🗡",color:white}]