## Light the enemy hero on fire
function card:helper/tag_enemy_hero
scoreboard players add @n[tag=id,tag=enemy_hero,distance=..200] fire 1
playsound minecraft:block.lava.extinguish master @a[tag=id]