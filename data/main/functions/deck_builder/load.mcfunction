fill ~-3 -64 ~-3 ~3 ~-60 ~3 air
tag @s remove saving
item replace entity @s enderchest.0 from entity @s weapon.offhand
item replace entity @s enderchest.1 from entity @s enderchest.0
gamemode adventure @s
clear @s
tp @s ~4 ~ ~

## Mass data moving
data merge block 0 0 0 {Items:[]}
item replace block 0 0 0 container.0 from entity @s enderchest.0

## Advancements
scoreboard players set #ignore_text var 1
advancement revoke @s everything

execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.ambush
execute if score #test var matches 1 run advancement grant @s only main:quests/ambush
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.aquatic
execute if score #test var matches 1 run advancement grant @s only main:quests/aquatic
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.armor
execute if score #test var matches 1 run advancement grant @s only main:quests/armor
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.conversion
execute if score #test var matches 1 run advancement grant @s only main:quests/conversion
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.creeper
execute if score #test var matches 1 run advancement grant @s only main:quests/creeper
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.defend
execute if score #test var matches 1 run advancement grant @s only main:quests/defend
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.end
execute if score #test var matches 1 run advancement grant @s only main:quests/end
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.killer
execute if score #test var matches 1 run advancement grant @s only main:quests/killer
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.loser
execute if score #test var matches 1 run advancement grant @s only main:quests/loser
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.nether
execute if score #test var matches 1 run advancement grant @s only main:quests/nether
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.overworld
execute if score #test var matches 1 run advancement grant @s only main:quests/overworld
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.parkour
execute if score #test var matches 1 run advancement grant @s only main:quests/parkour
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.potion
execute if score #test var matches 1 run advancement grant @s only main:quests/potion
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.rich
execute if score #test var matches 1 run advancement grant @s only main:quests/rich
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.sacrifice
execute if score #test var matches 1 run advancement grant @s only main:quests/sacrifice
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.stickypiston
execute if score #test var matches 1 run advancement grant @s only main:quests/stickypiston
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.trap
execute if score #test var matches 1 run advancement grant @s only main:quests/trap
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.tutorial
execute if score #test var matches 1 run advancement grant @s only main:quests/tutorial
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.deckmaster
execute if score #test var matches 1 run advancement grant @s only main:quests/deckmaster

execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.practice
execute if score #test var matches 1 run advancement grant @s only main:quests/practice
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.unknown
execute if score #test var matches 1 run advancement grant @s only main:quests/unknown
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.mansion
execute if score #test var matches 1 run advancement grant @s only main:quests/mansion
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.ocean
execute if score #test var matches 1 run advancement grant @s only main:quests/ocean
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.frog
execute if score #test var matches 1 run advancement grant @s only main:quests/frog
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.zen
execute if score #test var matches 1 run advancement grant @s only main:quests/zen
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.piston
execute if score #test var matches 1 run advancement grant @s only main:quests/piston
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.bee
execute if score #test var matches 1 run advancement grant @s only main:quests/bee
execute store result score #test var run data get block 0 0 0 Items[0].tag.Save.quests.tnt
execute if score #test var matches 1 run advancement grant @s only main:quests/tnt


execute store result score @s wins run data get block 0 0 0 Items[0].tag.Save.wins
execute store result score @s losses run data get block 0 0 0 Items[0].tag.Save.losses

execute store result score @s play.end run data get block 0 0 0 Items[0].tag.Save.play.end
execute store result score @s play.nether run data get block 0 0 0 Items[0].tag.Save.play.nether
execute store result score @s play.overworld run data get block 0 0 0 Items[0].tag.Save.play.overworld
execute store result score @s play.potion run data get block 0 0 0 Items[0].tag.Save.play.potion
execute store result score @s play.armor run data get block 0 0 0 Items[0].tag.Save.play.armor
execute store result score @s play.trap run data get block 0 0 0 Items[0].tag.Save.play.trap
execute store result score @s play.water run data get block 0 0 0 Items[0].tag.Save.play.water
execute store result score @s mine.cobble run data get block 0 0 0 Items[0].tag.Save.mine.cobble

execute store result score @s conversions run data get block 0 0 0 Items[0].tag.Save.conversions
execute store result score @s entity.kills run data get block 0 0 0 Items[0].tag.Save.entity.kills
execute store result score @s entity.deaths run data get block 0 0 0 Items[0].tag.Save.entity.deaths
execute store result score @s card_packs run data get block 0 0 0 Items[0].tag.Save.card_packs
execute store result score @s deck run data get block 0 0 0 Items[0].tag.Save.deck
execute store result score @s dubloons run data get block 0 0 0 Items[0].tag.Save.dubloons
execute if score @s deck matches 0.. run scoreboard players set @s deck -1

execute store result score #test_version var run data get block 0 0 0 Items[0].tag.Save.version
execute unless score #test_version var = #version var run function main:player/reset/decks

item replace entity @s enderchest.0 from block 0 0 0 container.0
item replace entity @s enderchest.1 from block 0 0 0 container.0

tellraw @s {"translate":"save.load"}
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 10 0 1
scoreboard players set #ignore_text var 0