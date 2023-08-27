## Buffs the hero!
scoreboard players set #heal var 1
execute at @e[tag=board.player.1,tag=friendly,tag=id,limit=1] as @e[tag=hero.1,tag=id,limit=1,sort=nearest] run function cards:entity/heal
execute at @e[tag=board.player.2,tag=friendly,tag=id,limit=1] as @e[tag=hero.2,tag=id,limit=1,sort=nearest] run function cards:entity/heal
