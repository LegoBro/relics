## Open a pack
scoreboard players operation #id var = @s id
execute as @e[tag=deck.builder.anchor,sort=nearest,limit=1,scores={display=0..}] if score @s id = #id var run tag @s add fast_opening
