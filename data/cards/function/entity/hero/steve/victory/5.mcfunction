## Dancer
execute as @e[type=armor_stand,tag=steve,tag=id,distance=1..] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 fire

data merge entity @s {ShowArms:1b,Pose:{Body:[344f,0f,0f],Head:[315f,334f,0f],LeftLeg:[324f,0f,330f],RightLeg:[8f,237f,0f],LeftArm:[189f,253f,20f],RightArm:[303f,44f,0f]}}