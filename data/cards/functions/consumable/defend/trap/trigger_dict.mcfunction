## Dict for activate
execute if entity @s[tag=cobweb_trap] run function cards:consumable/defend/cobweb_trap/trigger
execute if entity @s[tag=wither_trap] run function cards:consumable/defend/wither_trap/trigger
execute if entity @s[tag=lava_pocket] run function cards:consumable/defend/lava_pocket/trigger
execute if entity @s[tag=skeleton_trap] run function cards:consumable/defend/skeleton_trap/trigger
execute if entity @s[tag=sculk_sensor_trap] run function cards:consumable/defend/sculk_sensor/trigger

# at the end in case two different traps are added to the same location
tag @s remove trap
