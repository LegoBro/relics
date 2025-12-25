## Applies DOT and damage
## Is the entity evasive? Do evasion check, if success, just quit
execute if entity @s[tag=evasive] if function cards:entity/attack/evasion run return 0

function cards:entity/apply_dot
function cards:entity/apply_damage