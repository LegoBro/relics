## Refills if original deck is low
function main:arena/create/arena/load_deck
setblock ~ ~-3 ~ shulker_box[facing=down]

execute if entity @s[tag=player.1] store result score #fatigue_damage var run scoreboard players add @e[tag=id,tag=hero.1] set.fatigue 1
execute if entity @s[tag=player.1] as @e[tag=id,tag=hero.1,limit=1,scores={set.fatigue=0..}] at @s run function main:player/use_card/fatigue

execute if entity @s[tag=player.2] store result score #fatigue_damage var run scoreboard players add @e[tag=id,tag=hero.2] set.fatigue 1
execute if entity @s[tag=player.2] as @e[tag=id,tag=hero.2,limit=1,scores={set.fatigue=0..}] at @s run function main:player/use_card/fatigue