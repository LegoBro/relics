scoreboard players operation #fatigue_damage var *= #2 var
scoreboard players operation #damage var = #fatigue_damage var
execute unless score #damage var matches 1.. run function main:player/use_card/fatigue/warn
execute if score #damage var matches 1.. run function main:player/use_card/fatigue/fatigue
execute if score #damage var matches 1.. run function cards:entity/apply_damage