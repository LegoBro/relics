## Using the scoreboard of #x var and #z var, update cells distance, and apply any modifications
scoreboard players operation #testX var = @s x
scoreboard players operation #testZ var = @s z

# Find differences between selection and current cell's distance
scoreboard players operation #testX var -= #x var
scoreboard players operation #testZ var -= #z var

# Make into positive numbers
execute if score #testX var matches ..-1 run scoreboard players operation #testX var *= #-1 var
execute if score #testZ var matches ..-1 run scoreboard players operation #testZ var *= #-1 var

# Add together for final distance
scoreboard players operation #testX var += #testZ var
scoreboard players operation @s distance = #testX var

# Invisibility hiding (can't attack invisible entities)

## Display the distances
function main:board/cell/select_display

tellraw @a [{"text":"Cell at: ("},{"score":{"name":"@s","objective":"x"}},{"text":", "},{"score":{"name":"@s","objective":"z"}},{"text":")\n   ("},{"score":{"name":"#testX","objective":"var"}},{"text":", "},{"score":{"name":"#testZ","objective":"var"}},{"text":")"}]
tellraw @a [{text:"    Distance = "},{score:{name:"@s",objective:"distance"}}]