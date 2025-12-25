## This is what runs as the board.  Rather than having the game be player-based, it is board-based

# Get id for the board and tag all entities with the same id.  This is to make sure nothing from other boards breaks each other
# Remove all @e tags BEFORE adding it to all new entities.  It's better to clean up before than after in this case
tag @e remove id
scoreboard players operation game.id var = @s id
execute as @e if score @s id = game.id var run tag @s add id
tag @e[tag=id,tag=new] remove new
scoreboard players operation #set.handSize var = @s set.handSize

execute as @a[tag=id] at @s run function main:board/player/tick

execute at @e[type=armor_stand,tag=board.player.1,tag=id] store result score @e[tag=draw.player.1,tag=id] play.card.turn run data get block ~ ~-2 ~ Items
execute at @e[type=armor_stand,tag=board.player.2,tag=id] store result score @e[tag=draw.player.2,tag=id] play.card.turn run data get block ~ ~-2 ~ Items
scoreboard players operation @e[tag=draw.player.1,tag=id] set.fatigue = @e[tag=id,tag=hero.1] set.fatigue
scoreboard players operation @e[tag=draw.player.2,tag=id] set.fatigue = @e[tag=id,tag=hero.2] set.fatigue

## Tick for board entity units/buildings
execute as @e[tag=id,tag=attackable,distance=..100] at @s run function main:board/entity/unit/tick

# Win condition = hero has died
execute if entity @e[tag=id,tag=hero.2] unless entity @e[tag=id,tag=hero.1] as @a[tag=id,tag=player.2] run function main:board/win/begin
execute if entity @e[tag=id,tag=hero.1] unless entity @e[tag=id,tag=hero.2] as @a[tag=id,tag=player.1] run function main:board/win/begin

# Player leaves mid-game = win = forfeit
execute unless entity @a[tag=id,tag=player.2] as @a[tag=id,tag=player.1] run function main:board/win/begin
execute unless entity @a[tag=id,tag=player.1] as @a[tag=id,tag=player.2] run function main:board/win/begin
# Finally, remove the id tag from all entities because the next board will now process
#say @e[tag=id]
