# Random pot - old end turn ability, kept for future 
#execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] store result score #friendly var if entity @s[tag=friendly]
#execute if score #friendly var matches 1 as @a[tag=id,tag=turn] run function cards:consumable/defend/witch_hut/potion
#execute if score #friendly var matches 1 as @e[tag=witch,tag=id] as @a[tag=id,tag=turn] run function cards:consumable/defend/witch_hut/potion
