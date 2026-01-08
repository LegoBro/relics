execute if score #turnTimerLoop var matches ..3 run setblock ~ ~ ~ copper_bulb[lit=true]
execute if score #turnTimerLoop var matches 4..7 run setblock ~ ~ ~ exposed_copper_bulb[lit=true]
execute if score #turnTimerLoop var matches 8..11 run setblock ~ ~ ~ weathered_copper_bulb[lit=true]
execute if score #turnTimerLoop var matches 12.. run setblock ~ ~ ~ oxidized_copper_bulb[lit=true]