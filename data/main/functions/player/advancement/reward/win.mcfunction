## Gives 100 currency as a reward
scoreboard players operation #amount var = @s matchDuration
scoreboard players operation #amount var /= #400 var
scoreboard players operation #amount var += @s dailyWinBonus
scoreboard players remove @s[scores={dailyWinBonus=5..}] dailyWinBonus 5

scoreboard players operation @s dubloons += #amount var
function main:player/advancement/reward/earn
