## Gets selected entity's traits and stats for calculations

function cards:entity/calc_speed
function cards:entity/calc_range

# Entity requires vibration to attack - maybe revise to store stats in scores instead?
execute if entity @s[tag=needs_vibration] run tag @p[tag=id,tag=turn] add needs_vibration
