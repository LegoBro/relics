## Select Overrides based on entity traits and circumstances
# Needs Vibration (warden)
execute if entity @s[tag=needs_vibration] run function cards:entity/select/needs_vibration

# Riding in Minecart
tag @e[tag=id,tag=board,tag=minecart.rail_path] remove minecart.rail_path
execute if entity @e[tag=card.entity,limit=1,distance=..1.5,sort=nearest,tag=id,tag=in_minecart] run function cards:entity/minecart

# Lunging Trait
execute if entity @s[tag=lunging] run function cards:entity/select/lunging

## Entity Select Effects, for visual and auditory purposes
execute at @s run function cards:entity/select_dict

