## Scales up the structure
execute if score #turnTimerLoop var matches ..3 run fill ~1 ~ ~1 ~-1 ~ ~-1 cut_copper replace oxidized_cut_copper
execute if score #turnTimerLoop var matches 4..7 run fill ~1 ~ ~1 ~-1 ~ ~-1 exposed_cut_copper replace cut_copper
execute if score #turnTimerLoop var matches 8..11 run fill ~1 ~ ~1 ~-1 ~ ~-1 weathered_cut_copper replace exposed_cut_copper
execute if score #turnTimerLoop var matches 12.. run fill ~1 ~ ~1 ~-1 ~ ~-1 oxidized_cut_copper replace weathered_cut_copper

execute if score #turnTimerLoop var matches ..3 run fill ~1 ~ ~1 ~-1 ~ ~-1 copper_bulb replace oxidized_copper_bulb
execute if score #turnTimerLoop var matches 4..7 run fill ~1 ~ ~1 ~-1 ~ ~-1 exposed_copper_bulb replace copper_bulb
execute if score #turnTimerLoop var matches 8..11 run fill ~1 ~ ~1 ~-1 ~ ~-1 weathered_copper_bulb replace exposed_copper_bulb
execute if score #turnTimerLoop var matches 12.. run fill ~1 ~ ~1 ~-1 ~ ~-1 oxidized_copper_bulb replace weathered_copper_bulb

execute positioned ~1 ~ ~ run function cards:consumable/defend/vault/place_bulb