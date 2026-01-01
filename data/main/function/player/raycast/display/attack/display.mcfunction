## Displays the amount of damage dealt if ability used
function main:player/raycast/display/attack/calc

#title @s actionbar []
function main:player/raycast/display/attack/macro with storage helper:raycast/display

#title @s actionbar [{"score":{"name":"#armor","objective":"var"},"color":"gray","bold":true},{"translate":"🛡","color":"white","bold":false},{"text":" "},{"score":{"name":"#health","objective":"var"},"color":"red","bold":true},{"text":"/","color":"red","bold":false},{"score":{"name":"#maxHealth","objective":"var"},"color":"red","bold":true},{"translate":"♥","color":"white","bold":false},{"text":" "},{"score":{"name":"#attack","objective":"var"},"color":"dark_red","bold":true},{"translate":"🗡","color":"white","bold":false},{"text":" "},{"score":{"name":"#speed","objective":"var"},"color":"blue","bold":true},{"translate":"🥾","color":"white","bold":false},{"text":" "},{"score":{"name":"#range","objective":"var"},"color":"green","bold":true},{"translate":"🏹","color":"white","bold":false}]