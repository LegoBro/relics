## Ticks entities, this is the entity dictionary

execute if entity @s[type=armor_stand,tag=board.center,tag=!tutorial,tag=!end,tag=!drafting] run return run function main:board/tick
execute if entity @s[type=armor_stand,tag=board.center,tag=!tutorial,tag=drafting,tag=!end] run return run function main:board/drafting/tick
execute if entity @s[type=armor_stand,tag=board.center,tag=tutorial,tag=!end] run return run function main:board/tutorial/tick
execute if entity @s[type=armor_stand,tag=board.center,tag=!tutorial,tag=end] run return run function main:board/win/tick
execute if entity @s[tag=animation] run return run function main:animation/tick
execute if entity @s[type=armor_stand,tag=deck.builder.anchor] run return run function main:deck_builder/tick
execute if entity @s[tag=follow] run return run tp @s ~ ~ ~ facing entity @p feet
execute if entity @s[type=tnt,tag=!display,tag=card.entity] run return run data merge entity @s {fuse: 9999}