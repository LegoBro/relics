
execute if entity @s[tag=transition] run item replace entity @s container.0 with air

## Finalize transforms
data merge entity @s[tag=shop.display.right_transition] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-0.5f],scale:[1f,1f,1f]},interpolation_duration:3}
data merge entity @s[tag=shop.display.center_transition] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-1f],scale:[2f,2f,2f]},interpolation_duration:3}
data merge entity @s[tag=shop.display.left_transition] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[1f,1f,1f]},interpolation_duration:3}
#kill @s

data merge entity @s[tag=shop.display.new_left] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[0f,0f,0f]},interpolation_duration:3}
data merge entity @s[tag=shop.display.new_right] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[0f,0f,0f]},interpolation_duration:3}