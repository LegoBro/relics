## The player forfeits
scoreboard players reset @s forfeit
scoreboard players set #damage var 100
execute if entity @s[tag=player.1] at @e[type=armor_stand,tag=id,tag=board.player.1] as @e[tag=hero.1,tag=id,limit=1,sort=nearest] run function cards:entity/apply_pierce_damage
execute if entity @s[tag=player.2] at @e[type=armor_stand,tag=id,tag=board.player.2] as @e[tag=hero.2,tag=id,limit=1,sort=nearest] run function cards:entity/apply_pierce_damage
#execute if entity @a[tag=player.1,tag=id] if entity @a[tag=player.2,tag=id]
#function main:player/send_to_lobby
scoreboard players set @s winstreak 0
