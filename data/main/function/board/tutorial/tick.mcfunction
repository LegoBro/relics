## This is what runs as the board.  Rather than having the game be player-based, it is board-based

# Get id for the board and tag all entities with the same id.  This is to make sure nothing from other boards breaks each other
# Remove all @e tags BEFORE adding it to all new entities.  It's better to clean up before than after in this case
tag @e remove id
scoreboard players operation game.id var = @s id
execute as @e if score @s id = game.id var run tag @s add id

tag @e[tag=id,tag=new] remove new
scoreboard players remove @s[tag=!halt] tut.counter 1
execute if entity @s[tag=halt] run function main:board/tutorial/test
execute if score @s tut.counter matches ..0 run function main:board/tutorial/dict


#execute unless score @s tut.spot matches 54 as @e[type=armor_stand,tag=id,tag=cobblestone] at @s run tag @e[type=armor_stand,tag=board,tag=id,limit=1,distance=..1.5,sort=nearest] remove filled
execute unless score @s tut.spot matches 19 unless score @s tut.spot matches 28 unless score @s tut.spot matches 33 unless score @s tut.spot matches 54 run scoreboard players reset @a[tag=id] endTurn
tag @e[type=armor_stand,tag=id,tag=draw.player.1,tag=!tut.draw] add tut.draw
tag @e[type=armor_stand,tag=id,tag=tut.draw] add draw.player.1
execute unless score @s tut.spot matches 5 unless score @s tut.spot matches 37 unless score @s tut.spot matches 54 run tag @e[type=armor_stand,tag=id,tag=tut.draw] remove draw.player.1

# disable discard pile
tag @e[type=armor_stand,tag=id,tag=discard.player.1,tag=!tut.discard] add tut.discard
tag @e[type=armor_stand,tag=id,tag=tut.discard] add discard.player.1
execute unless score @s tut.spot matches 54 run tag @e[type=armor_stand,tag=id,tag=tut.discard] remove discard.player.1

execute at @e[type=armor_stand,tag=board.player.1,tag=id] store result score @e[tag=draw.player.1,tag=id] play.card.turn run data get block ~ ~-2 ~ Items
scoreboard players operation @e[tag=draw.player.1,tag=id] set.fatigue = @e[tag=id,tag=hero.1] set.fatigue


scoreboard players set @a[tag=id,scores={turnTimer=..0}] turnTimer 1
execute as @a[tag=id] at @s run function main:board/player/tick
execute if score @s tut.spot matches 54 if entity @a[tag=id,tag=wait] run function main:board/end_turn

execute as @e[tag=id,tag=friendly,tag=movable] at @s run particle witch ~ ~2 ~ 0.5 0 0.5 0 1 normal
execute as @e[tag=id,scores={fire=1..}] at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
execute as @e[tag=id,scores={poison=1..}] at @s run particle minecraft:entity_effect{color:[0.267,1.000,0.000,1.00]} ~ ~2 ~ 0.0 1.0 0.0 0 1 normal
execute as @e[tag=id,scores={wither=1..}] at @s run particle minecraft:entity_effect{color:[0.1,0.100,0.000,1.00]} ~ ~2 ~ 0.5 1.0 0.5 0 1 normal
execute as @e[tag=id,scores={invisibility=1..}] at @s run effect give @s invisibility 1 0
execute as @e[tag=id,scores={speed_pot=1..}] at @s run effect give @s speed 1 0
execute as @e[tag=id,scores={strength=1..}] at @s run effect give @s strength 1 0
execute as @e[tag=id,scores={fire_resistance=1..}] at @s run effect give @s fire_resistance 1 0
execute as @e[tag=id,scores={slowness=1..}] at @s run effect give @s slowness 1 0
execute as @e[tag=id,scores={weakness=1..}] at @s run effect give @s weakness 1 0
execute as @e[tag=id,scores={blindness=1..}] at @s run effect give @s blindness 1 0

execute if entity @e[tag=id,tag=hero.2] unless entity @e[tag=id,tag=hero.1] run function main:board/tutorial/death
#say @e[tag=id,tag=arena.anchor]

# Finally, remove the id tag from all entities because the next board will now process
tag @e remove id
