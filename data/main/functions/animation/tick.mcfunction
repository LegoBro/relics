## Ticks all animation handlers
kill @s[tag=fall,nbt={OnGround:1b}]
execute as @s[tag=pickaxe] at @s run function main:animation/pickaxe
