## Music Ticking

scoreboard players add @a music.time 1
execute as @a[scores={music.time=0..}] at @s run function music:play
schedule function music:main 1s