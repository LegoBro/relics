## Grab attack from mob
scoreboard players operation @e[tag=parrot,tag=new,tag=id,limit=1,sort=nearest] attack = @e[tag=card.entity,tag=id] attack
scoreboard players operation @e[tag=parrot,tag=new,tag=id,limit=1,sort=nearest] maxHealth = @e[tag=card.entity,tag=id] maxHealth
scoreboard players operation @e[tag=parrot,tag=new,tag=id,limit=1,sort=nearest] health = @e[tag=card.entity,tag=id] health
playsound minecraft:entity.parrot.ambient master @a[tag=id] ~ ~ ~ 10 1 1
