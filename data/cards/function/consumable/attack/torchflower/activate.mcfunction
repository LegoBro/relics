## Light the enemy hero on fire
execute if entity @s[tag=player.1] as @e[type=armor_stand,tag=hero.2,tag=id] run scoreboard players add @s fire 1
execute if entity @s[tag=player.2] as @e[type=armor_stand,tag=hero.1,tag=id] run scoreboard players add @s fire 1
playsound minecraft:block.lava.extinguish master @a[tag=id]