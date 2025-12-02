## Bubblegum Barb
playsound block.beehive.exit master @a[tag=id] ~ ~ ~ 10 1.5 1
execute as @e[type=armor_stand,tag=steve,tag=id,distance=1..] at @s run fill ~1 ~-1 ~1 ~-1 ~3 ~-1 pink_stained_glass
execute as @e[type=armor_stand,tag=steve,tag=id,distance=1..] at @s run fill ~2 ~ ~1 ~-2 ~2 ~-1 pink_stained_glass
execute as @e[type=armor_stand,tag=steve,tag=id,distance=1..] at @s run fill ~1 ~ ~2 ~-1 ~2 ~-2 pink_stained_glass
execute as @e[type=armor_stand,tag=steve,tag=id,distance=1..] at @s run fill ~1 ~ ~1 ~-1 ~2 ~-1 air

data merge entity @s {ShowArms:1b,Pose:{Body:[8f,0f,0f],Head:[22f,0f,0f],LeftLeg:[90f,84f,0f],RightLeg:[82f,265f,0f],LeftArm:[76f,76f,0f],RightArm:[72f,263f,0f]}}