## Displays entity traits
execute as @n[tag=card.entity,distance=..2] run function cards:entity/get/stats

data modify storage helper:raycast/display actionbar set value [{"score":{"name":"#armor","objective":"var"},"color":"gray","bold":true},{"translate":"🛡","color":"white","bold":false},{"text":" "},{"score":{"name":"#health","objective":"var"},"color":"red","bold":true},{"text":"/","color":"red","bold":false},{"score":{"name":"#maxHealth","objective":"var"},"color":"red","bold":true},{"translate":"♥","color":"white","bold":false},{"text":" "},{"score":{"name":"#attack","objective":"var"},"color":"dark_red","bold":true},{"translate":"🗡","color":"white","bold":false},{"text":" "},{"score":{"name":"#speed","objective":"var"},"color":"blue","bold":true},{"translate":"🥾","color":"white","bold":false},{"text":" "},{"score":{"name":"#range","objective":"var"},"color":"green","bold":true},{"translate":"🏹","color":"white","bold":false}]

execute if score #invisibility var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"invisibility",color:"white",icon:"🧪"}
execute if score #speed_pot var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"speed_pot",color:"blue",icon:"🧪"}
execute if score #strength var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"strength",color:"red",icon:"🧪"}
execute if score #fire_resistance var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"fire_resistance",color:"gold",icon:"🧪"}
execute if score #weakness var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"weakness",color:"gray",icon:"🧪"}
execute if score #blindness var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"blindness",color:"black",icon:"🧪"}
execute if score #slowness var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"slowness",color:"gray",icon:"🧪"}
execute if score #spear var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"spear",color:"white",icon:"s"}

execute if score #poison var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"poison",color:"green",icon:"🧪"}
execute if score #fire var matches 1.. run function main:player/raycast/display/attack/display/effect {effect:"fire",color:"white",icon:"🔥"}


function main:player/raycast/display/attack/macro with storage helper:raycast/display