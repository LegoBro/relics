## Gets selected entity's traits and stats for calculations

function cards:entity/get/speed
function cards:entity/get/range

## Should the entity ignore being blocked?
execute store result score #skip_blocking var if entity @s[tag=lunging]

## Should the entity ignore being blocked?
execute store result score #can_attack_friendly var if entity @s[tag=can_attack_friendly]