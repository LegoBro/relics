## Grab attack from mob
function cards:helper/tag_friendlies
scoreboard players operation @e[tag=parrot,tag=new,tag=id,limit=1,sort=nearest] attack = @e[tag=card.entity,tag=id,tag=is_friendly,sort=random] attack
scoreboard players operation @e[tag=parrot,tag=new,tag=id,limit=1,sort=nearest] maxHealth = @e[tag=card.entity,tag=id,tag=is_friendly,sort=random] maxHealth
scoreboard players operation @e[tag=parrot,tag=new,tag=id,limit=1,sort=nearest] health = @e[tag=card.entity,tag=id,tag=is_friendly,sort=random] health
playsound minecraft:entity.parrot.ambient master @a[tag=id] ~ ~ ~ 10 1 1
