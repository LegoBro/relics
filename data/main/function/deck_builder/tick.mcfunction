## Ticks the deck builder
tag @e remove id
scoreboard players operation game.id var = @s id
execute as @e if score @s id = game.id var run tag @s add id
tag @e[tag=id,tag=new] remove new
tp @s ~ ~ ~ ~5 ~
execute as @a[tag=id] at @s if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run function main:arena/create/deck_builder/store/offhand
execute if entity @s[tag=opening] run function main:deck_builder/expansion/open/dict
execute if entity @s[tag=!opening] run function main:deck_builder/expansion/get_display

execute as @e[type=player,tag=!saving,tag=id] at @s run function main:deck_builder/card_manager/player
execute as @e[type=player,tag=saving,tag=id] run function main:deck_builder/saving
execute as @e[type=marker,tag=id,tag=deck.builder.marker] at @s run function main:deck_builder/card_manager/update
execute at @e[type=marker,tag=id,tag=deck.builder.ah] as @p[tag=id] run function main:deck_builder/arena_hero/update