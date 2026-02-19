tellraw @s [{"translate":"duel.invite.settings","color":"gray"}]

execute if score #set.mode var matches 0 run tellraw @s [{"translate":"duel.invite.settings.mode","color":"gray"},{"translate":"Classic","color":"gold"}]
execute if score #set.mode var matches 1 run tellraw @s [{"translate":"duel.invite.settings.mode","color":"gray"},{"translate":"Mirror","color":"dark_aqua"}]
execute if score #set.mode var matches 2 run tellraw @s [{"translate":"duel.invite.settings.mode","color":"gray"},{"translate":"Draft","color":"dark_red"}]
execute if score #set.mode var matches 3 run tellraw @s [{"translate":"duel.invite.settings.mode","color":"gray"},{"translate":"No Draw","color":"dark_green"}]

execute if score #set.time var matches 0 run tellraw @s [{"translate":"duel.invite.settings.preset","color":"gray"},{"translate":"60s","color":"green"}]
execute if score #set.time var matches 1 run tellraw @s [{"translate":"duel.invite.settings.preset","color":"gray"},{"translate":"30s","color":"blue"}]

execute if score #set.handSize var matches 3 unless score #set.mode var matches 3 run tellraw @s [{"translate":"duel.invite.settings.handsize","color":"gray"},{"translate":"3","color":"red"}]
execute if score #set.handSize var matches 5 unless score #set.mode var matches 3 run tellraw @s [{"translate":"duel.invite.settings.handsize","color":"gray"},{"translate":"5","color":"gold"}]
execute if score #set.handSize var matches 8 unless score #set.mode var matches 3 run tellraw @s [{"translate":"duel.invite.settings.handsize","color":"gray"},{"translate":"8","color":"green"}]

execute if score #set.fatigue var matches -2000000 unless score #set.mode var matches 3 run tellraw @s [{"translate":"duel.invite.settings.fatigue","color":"gray"},{"translate":"X","color":"red"}]
execute if score #set.fatigue var matches -2 unless score #set.mode var matches 3 run tellraw @s [{"translate":"duel.invite.settings.fatigue","color":"gray"},{"translate":"3","color":"dark_green"}]
execute if score #set.fatigue var matches -1 unless score #set.mode var matches 3 run tellraw @s [{"translate":"duel.invite.settings.fatigue","color":"gray"},{"translate":"2","color":"green"}]
execute if score #set.fatigue var matches 0 unless score #set.mode var matches 3 run tellraw @s [{"translate":"duel.invite.settings.fatigue","color":"gray"},{"translate":"1","color":"gold"}]

execute if score #set.hero_hp var matches 10 run tellraw @s [{"translate":"duel.invite.settings.hero_hp","color":"gray"},{"translate":"10","color":"red"}]
execute if score #set.hero_hp var matches 15 run tellraw @s [{"translate":"duel.invite.settings.hero_hp","color":"gray"},{"translate":"15","color":"yellow"}]
execute if score #set.hero_hp var matches 20 run tellraw @s [{"translate":"duel.invite.settings.hero_hp","color":"gray"},{"translate":"20","color":"dark_green"}]