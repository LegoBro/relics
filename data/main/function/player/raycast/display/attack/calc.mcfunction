## Calculate displays

execute if score #dealt_damage var matches 1.. run function main:player/raycast/display/attack/display/damage
execute if score #dealt_heal var matches 1.. run function main:player/raycast/display/attack/display/heal

execute if score #dealt_damage_armor var matches 1.. run function main:player/raycast/display/attack/display/armor

execute if score #dealt_fire var matches 1.. run function main:player/raycast/display/attack/display/fire

execute if score #dealt_poison var matches 1.. run function main:player/raycast/display/attack/display/poison

execute if score #dealt_wither var matches 1.. run function main:player/raycast/display/attack/display/wither

execute if score #dealt_deaths var matches 1.. run function main:player/raycast/display/attack/display/deaths