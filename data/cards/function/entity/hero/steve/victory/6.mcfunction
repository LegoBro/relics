
execute as @e[type=armor_stand,tag=steve,tag=id,distance=1..] at @s run fill ~1 ~4 ~1 ~-1 ~4 ~-1 lava

data merge entity @s {ShowArms:1b,Pose:{Body:[22f,0f,0f],Head:[16f,0f,0f],LeftLeg:[16f,0f,0f],RightLeg:[20f,0f,0f],LeftArm:[301f,32f,0f],RightArm:[297f,338f,0f]}}