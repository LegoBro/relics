particle crit ~ ~1 ~ 0.5 0.5 0.5 0 50 force @a[tag=id]

function cards:consumable/attack/critical_hit/count_effects

execute if score #damage var matches 10.. as @p[tag=turn,tag=id,advancements={main:quests/critical=false}] run advancement grant @s only main:quests/critical

function cards:entity/apply_damage