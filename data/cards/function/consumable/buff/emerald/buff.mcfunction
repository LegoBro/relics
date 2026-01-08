## Buff the entity, epic
execute if entity @s[tag=librarian] run return run function cards:entity/overworld/librarian/emerald

execute if entity @s[type=villager] run return run function cards:consumable/buff/emerald/buff/villager
execute if entity @s[type=wandering_trader] run return run function cards:entity/overworld/wandering_trader/buff

## Villager Zombie, and illagers
return run function cards:consumable/buff/emerald/buff/hp_and_d
