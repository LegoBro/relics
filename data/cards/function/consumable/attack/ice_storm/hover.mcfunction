## Ice storm
function main:player/raycast/display/attack/reset

scoreboard players set #damage var 1
execute as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=id,tag=!frozen,sort=nearest,distance=..100] run function cards:entity/display/damage

scoreboard players operation #speed var = #dealt_damage var

data modify storage helper:raycast/display actionbar append value {text:" -",color:red}
data modify storage helper:raycast/display actionbar append value {"score":{"name":"#dealt_damage","objective":"var"},"color":"red","bold":true}
data modify storage helper:raycast/display actionbar append value {text:"🥾",color:white}

function main:player/raycast/display/attack/display