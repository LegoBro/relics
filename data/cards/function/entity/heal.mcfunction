## Heals the executor by #heal amount, and keeps overhealed health amount

execute if score @s health < @s maxHealth run tellraw @a[tag=id] [{"selector":"@s"},{"text":" heals ","color":"white"},{"score":{"name":"#heal","objective":"var"},"bold":true,"color":"white"},{"text":" health","color":"white"}]

scoreboard players operation #overheal var = @s health
scoreboard players operation #overheal var -= @s maxHealth
scoreboard players operation @s health += #heal var
execute if score @s health > @s maxHealth run scoreboard players operation @s health = @s maxHealth
execute if score #overheal var matches 1.. run scoreboard players operation @s health += #overheal var
