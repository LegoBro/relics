## Completely heal a random entity (actually just 5)
function cards:entity/end/teleport
execute at @s run tag @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id] add movable
