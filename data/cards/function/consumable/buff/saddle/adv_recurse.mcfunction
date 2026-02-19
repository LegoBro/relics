# Advancement check for mount
scoreboard players add #mount_stack var 1
execute on passengers if entity @s run return run function cards:consumable/buff/saddle/adv_recurse
execute if score #mount_stack var matches 5.. as @p[tag=turn,tag=id,advancements={main:quests/saddle=false}] run advancement grant @s only main:quests/saddle