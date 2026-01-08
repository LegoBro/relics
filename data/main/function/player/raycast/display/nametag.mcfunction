## Displays nametag above entity
execute if score @s rightClick matches 1.. if score #holding_selector var matches 1.. run return run function main:board/select_cell
execute if score #holding_card var matches 1.. run return run function main:player/raycast/use/hover

## If player is not right-clicking selector or holding a card, display stats
function main:player/raycast/display/entity