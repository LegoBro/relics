playsound minecraft:entity.creeper.death master @a[tag=id] ~ ~ ~ 10 0.8 1

function cards:entity/end/end_crystal/explode
kill @e[type=end_crystal,tag=card.passenger,limit=1,sort=nearest]
