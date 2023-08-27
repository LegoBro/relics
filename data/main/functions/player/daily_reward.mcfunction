scoreboard players add @s dailyLoginTime 1728000
scoreboard players set @s dailyWinBonus 25
execute if score #time_test var matches ..3456000 run tellraw @s {"translate":"daily_reward","color":"gold"}