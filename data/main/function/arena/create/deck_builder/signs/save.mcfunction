## Enter Saving Mode
tag @s add saving
gamemode creative @s
tp @s ~ -50 ~
clear @s
tellraw @s [{"translate":"saving.save.1","color":"dark_green"}]
tellraw @s [{"translate":"saving.save.2","color":"green"}]
tellraw @s [{"translate":"saving.save.3","color":"green"}]
tellraw @s [{"translate":"saving.save.4","color":"green"}]
tellraw @s [{"translate":"saving.save.5","color":"green"}]

## Logical Data Copying
data merge block 0 0 0 {Items:[]}
item replace block 0 0 0 container.0 from entity @s enderchest.0
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.wins int 1 run scoreboard players get @s wins
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.losses int 1 run scoreboard players get @s losses
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.play.end int 1 run scoreboard players get @s play.end

execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.play.nether int 1 run scoreboard players get @s play.nether
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.play.overworld int 1 run scoreboard players get @s play.overworld
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.play.potion int 1 run scoreboard players get @s play.potion
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.play.armor int 1 run scoreboard players get @s play.armor
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.play.trap int 1 run scoreboard players get @s play.trap
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.play.water int 1 run scoreboard players get @s play.water
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.mine.cobble int 1 run scoreboard players get @s mine.cobble

execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.conversions int 1 run scoreboard players get @s conversions

execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.entity.kills int 1 run scoreboard players get @s entity.kills
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.entity.deaths int 1 run scoreboard players get @s entity.deaths

execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.card_packs int 1 run scoreboard players get @s card_packs
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.deck int 1 run scoreboard players get @s deck
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.dubloons int 1 run scoreboard players get @s dubloons
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.version int 1 run scoreboard players get #version var

execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.ambush int 1 if entity @s[advancements={main:quests/ambush=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.aquatic int 1 if entity @s[advancements={main:quests/aquatic=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.armor int 1 if entity @s[advancements={main:quests/armor=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.conversion int 1 if entity @s[advancements={main:quests/conversion=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.creeper int 1 if entity @s[advancements={main:quests/creeper=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.defend int 1 if entity @s[advancements={main:quests/defend=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.end int 1 if entity @s[advancements={main:quests/end=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.killer int 1 if entity @s[advancements={main:quests/killer=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.loser int 1 if entity @s[advancements={main:quests/loser=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.nether int 1 if entity @s[advancements={main:quests/nether=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.overworld int 1 if entity @s[advancements={main:quests/overworld=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.parkour int 1 if entity @s[advancements={main:quests/parkour=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.potion int 1 if entity @s[advancements={main:quests/potion=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.rich int 1 if entity @s[advancements={main:quests/rich=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.sacrifice int 1 if entity @s[advancements={main:quests/sacrifice=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.stickypiston int 1 if entity @s[advancements={main:quests/stickypiston=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.trap int 1 if entity @s[advancements={main:quests/trap=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.tutorial int 1 if entity @s[advancements={main:quests/tutorial=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.deckmaster int 1 if entity @s[advancements={main:quests/deckmaster=true}]

execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.practice int 1 if entity @s[advancements={main:quests/practice=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.unknown int 1 if entity @s[advancements={main:quests/unknown=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.mansion int 1 if entity @s[advancements={main:quests/mansion=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.ocean int 1 if entity @s[advancements={main:quests/ocean=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.frog int 1 if entity @s[advancements={main:quests/frog=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.zen int 1 if entity @s[advancements={main:quests/zen=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.piston int 1 if entity @s[advancements={main:quests/piston=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.bee int 1 if entity @s[advancements={main:quests/bee=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.tnt int 1 if entity @s[advancements={main:quests/tnt=true}]
execute store result block 0 0 0 Items[0].components."minecraft:custom_data".Save.quests.sherd int 1 if entity @s[advancements={main:quests/sherd=true}]


item replace entity @s enderchest.0 from block 0 0 0 container.0

playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 10 0 1