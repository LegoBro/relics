## Get all entity stats

# shield = 🛡
# Heart ♥
# Attack 🗡

scoreboard players operation #health var = @s health
scoreboard players operation #maxHealth var = @s maxHealth
scoreboard players operation #armor var = @s armor

scoreboard players operation #attack var = @s attack
scoreboard players operation #attack_fire var = @s apply_fire
scoreboard players operation #attack_poison var = @s apply_poison
scoreboard players operation #attack_wither var = @s apply_wither

scoreboard players operation #speed var = @s speed
scoreboard players operation #range var = @s range