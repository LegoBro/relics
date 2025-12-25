execute if entity @s[scores={fire=1..}] run particle flame ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
execute if entity @s[scores={poison=1..}] run effect give @s poison 1 0
execute if entity @s[scores={wither=1..}] run effect give @s wither 1 0
execute if entity @s[scores={invisibility=1..}] run effect give @s invisibility 1 0
execute if entity @s[scores={speed_pot=1..}] run effect give @s speed 1 0
execute if entity @s[scores={strength=1..}] run effect give @s strength 1 0
execute if entity @s[scores={fire_resistance=1..}] run effect give @s fire_resistance 1 0
execute if entity @s[scores={slowness=1..}] run effect give @s slowness 1 0
execute if entity @s[scores={weakness=1..}] run effect give @s weakness 1 0
execute if entity @s[scores={blindness=1..}] run effect give @s blindness 1 0

execute if entity @s[tag=arthropod] run scoreboard players set @s slowness 0