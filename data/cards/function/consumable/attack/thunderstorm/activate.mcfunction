## Strike 3 random entitites with lightning
execute unless entity @e[tag=id,tag=lightning_rod] as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=filled,tag=!blocked,tag=!block,limit=1,sort=random,tag=!board.player.1,tag=!board.player.2] run tag @s add strike_here
execute as @e[tag=id,tag=lightning_rod,limit=1,sort=random] at @s run function cards:consumable/defend/lightning_rod/absorb
execute unless entity @e[tag=id,tag=lightning_rod] as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=filled,tag=!blocked,tag=!block,limit=1,sort=random,tag=!board.player.1,tag=!board.player.2] run tag @s add strike_here
execute as @e[tag=id,tag=lightning_rod,limit=1,sort=random] at @s run function cards:consumable/defend/lightning_rod/absorb
execute unless entity @e[tag=id,tag=lightning_rod] as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=filled,tag=!blocked,tag=!block,limit=1,sort=random,tag=!board.player.1,tag=!board.player.2] run tag @s add strike_here
execute as @e[tag=id,tag=lightning_rod,limit=1,sort=random] at @s run function cards:consumable/defend/lightning_rod/absorb

execute as @e[tag=strike_here,tag=id] at @s run function cards:consumable/attack/thunderstorm/lightning_strike
tag @e[tag=strike_here,tag=id] remove strike_here