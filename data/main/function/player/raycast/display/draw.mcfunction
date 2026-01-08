scoreboard players set #cards_left var 0
scoreboard players set #fatigue_damage var 0

## Get
scoreboard players operation #fatigue_damage var = @e[tag=draw_pile,limit=1,sort=nearest] set.fatigue
scoreboard players operation #cards_left var = @e[tag=draw_pile,limit=1,sort=nearest] play.card.turn

## Display
execute unless score #cards_left var matches 0 if score #fatigue_damage var matches ..-20000 run title @s actionbar [{"translate":"cards_left","color":"dark_purple"},{"score":{"name": "#cards_left","objective": "var"},"color":"white"}]
execute if score #fatigue_damage var matches ..-1 run scoreboard players operation #fd var = #fatigue_damage var
execute if score #fatigue_damage var matches ..-1 run scoreboard players operation #fd var *= #-1 var
execute unless score #cards_left var matches 0 if score #fatigue_damage var matches -19999..-1 run title @s actionbar [{"translate":"cards_left","color":"dark_purple"},{"score":{"name": "#cards_left","objective": "var"},"color":"white"},{"translate":"before_fatigue","color":"light_purple"},{"score":{"name": "#fd","objective": "var"},"color":"white"}]
scoreboard players operation #fatigue_damage var *= #2 var
scoreboard players operation #fatigue_damage var += #2 var
execute unless score #cards_left var matches 0 if score #fatigue_damage var matches 1.. run title @s actionbar [{"translate":"cards_left","color":"dark_purple"},{"score":{"name": "#cards_left","objective": "var"},"color":"white"},{"translate":"fatigue_damage","color":"dark_red"},{"score":{"name": "#fatigue_damage","objective": "var"},"color":"red"}]

execute if score #cards_left var matches 0 if score #fatigue_damage var matches 0.. run title @s actionbar [{"translate":"reshuffle","color":"dark_purple"},{"translate":"fatigue_damage_take","color":"dark_red"},{"score":{"name": "#fatigue_damage","objective": "var"},"color":"red"}]
execute if score #cards_left var matches 0 if score #fatigue_damage var matches ..-1 run title @s actionbar [{"translate":"reshuffle","color":"dark_purple"}]

## Draw - deny non turn players
execute if score @s[tag=turn] rightClick matches 1.. if score #holding_selector var matches 1.. run function main:player/raycast/select/draw