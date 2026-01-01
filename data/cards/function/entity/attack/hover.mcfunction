## Visualizes DOT and damage
## Is the entity evasive? Do evasion check, if success, just quit
#execute if entity @s[tag=evasive] if function cards:entity/attack/evasion run return 0
function cards:entity/display/damage