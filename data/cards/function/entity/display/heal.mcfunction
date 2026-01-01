scoreboard players operation #health var -= #damage var
scoreboard players operation #dealt_heal var -= #damage var

## If overflows, then do this
scoreboard players operation #extra var = #maxHealth var
scoreboard players operation #extra var -= #health var

execute if score #extra var matches ..-1 run scoreboard players operation #dealt_heal var += #extra var
