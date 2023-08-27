## Sets or gets the correct player saturation
# Shoot it's xp now
xp set @s 0
xp set @s 89 levels

scoreboard players operation #cost_bar var = @s saturation
scoreboard players operation #test var = @s turnTimer

scoreboard players operation #test var %= #8 var

execute store result score #cost var run data get entity @s SelectedItem.tag.card.cost
execute if score #test var matches ..3 unless score #cost var > #cost_bar var run scoreboard players operation #cost_bar var -= #cost var

# 32 per level
execute if score #cost_bar var matches 1 run xp add @s 32 points
execute if score #cost_bar var matches 2 run xp add @s 64 points
execute if score #cost_bar var matches 3 run xp add @s 96 points
execute if score #cost_bar var matches 4 run xp add @s 128 points
execute if score #cost_bar var matches 5 run xp add @s 160 points
execute if score #cost_bar var matches 6 run xp add @s 192 points
execute if score #cost_bar var matches 7 run xp add @s 224 points
execute if score #cost_bar var matches 8 run xp add @s 256 points
execute if score #cost_bar var matches 9 run xp add @s 288 points
execute if score #cost_bar var matches 10 run xp add @s 320 points
execute if score #cost_bar var matches 11 run xp add @s 352 points
execute if score #cost_bar var matches 12 run xp add @s 384 points
execute if score #cost_bar var matches 13 run xp add @s 416 points
execute if score #cost_bar var matches 14 run xp add @s 448 points
execute if score #cost_bar var matches 15 run xp add @s 480 points
execute if score #cost_bar var matches 16 run xp add @s 512 points
execute if score #cost_bar var matches 17 run xp add @s 544 points
execute if score #cost_bar var matches 18 run xp add @s 576 points
execute if score #cost_bar var matches 19 run xp add @s 607 points
execute if score #cost_bar var matches 20.. run xp add @s 640 points

# Set the level
xp set @s 0 levels
scoreboard players operation #xp var = @s saturation
execute if score #xp var matches 1.. run function main:player/saturation_recurse