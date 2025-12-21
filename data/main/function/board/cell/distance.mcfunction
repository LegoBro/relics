## Using the scoreboard of #x var and #z var, update cells distance, and apply any modifications
scoreboard players operation #testX var = @s x
scoreboard players operation #testZ var = @s z

# Find differences between selection and current cell's distance
scoreboard players operation #testX var -= #x var
scoreboard players operation #testZ var -= #z var

# Make into positive numbers
execute if score #textX var matches ..-1 run scoreboard players operation #testX var *= #-1 var
execute if score #textZ var matches ..-1 run scoreboard players operation #testZ var *= #-1 var

# Add together for final distance
scoreboard players operation #testX var += #testZ var
scoreboard players operation @s distance = #testX var

# Invisibility hiding (can't attack invisible entities)
execute if entity @n[tag=id,distance=..1.5,tag=card.entity,scores={invisibility=1..}] run scoreboard players set @s[tag=!selected] distance 100


## Display the distances
function main:board/cell/select_display