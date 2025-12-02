## Main engine load

# VERSION
scoreboard players set #version var 400

## TEAMS
team add lobby
team modify lobby color gray
team modify lobby collisionRule never
team add in_game
team modify in_game color green
team add waiting
team modify waiting color blue
team modify waiting collisionRule never

team add orange
team modify orange color gold
team add yellow
team modify yellow color yellow
team add green
team modify green color green
team add dark_green
team modify dark_green color dark_green
team add red
team modify red color red
team add purple
team modify purple color dark_purple
team add gray
team modify gray color gray

# Scoreboards
scoreboard objectives add var dummy
scoreboard objectives add id dummy
scoreboard objectives add menu dummy
scoreboard objectives add deck dummy
scoreboard objectives add duel.id dummy
scoreboard objectives add duel.timer dummy
scoreboard objectives add turnCost dummy
scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add display dummy
scoreboard objectives add display_wait dummy
scoreboard objectives modify display_wait displayname {"text":"Queue:","color":"dark_blue"}
scoreboard objectives setdisplay sidebar.team.blue display_wait
scoreboard objectives add matchDuration minecraft.custom:minecraft.play_time
scoreboard objectives add dailyWinBonus dummy
scoreboard objectives add dailyLoginTime dummy
scoreboard objectives add play.card.turn dummy

# Triggers
scoreboard objectives add preset dummy
scoreboard objectives add mode dummy
scoreboard objectives add setting trigger
scoreboard objectives add reset trigger

# Settings
scoreboard objectives add set.time dummy
scoreboard objectives add set.handSize dummy
scoreboard objectives add set.fatigue dummy
scoreboard objectives add set.mode dummy
scoreboard objectives add set.arena dummy
scoreboard objectives add set.music dummy
scoreboard objectives add set.hero dummy

scoreboard objectives add card_packs dummy

scoreboard objectives add dubloons dummy
scoreboard objectives modify dubloons displayname "$"

## World link -> useful for game leaving
scoreboard objectives add world.link dummy

scoreboard objectives add health dummy
scoreboard objectives add maxHealth dummy
scoreboard objectives add armor dummy
scoreboard objectives add attack dummy
scoreboard objectives add element dummy


scoreboard objectives add tut.counter dummy
scoreboard objectives add tut.spot dummy

scoreboard objectives add forfeit minecraft.used:potion

scoreboard objectives add turnTimer minecraft.custom:minecraft.play_time
scoreboard objectives add gameTimer dummy

scoreboard objectives add apply_fire dummy
scoreboard objectives add apply_poison dummy
scoreboard objectives add apply_wither dummy

scoreboard objectives add fire dummy
scoreboard objectives add poison dummy
scoreboard objectives add wither dummy
scoreboard objectives add blindness dummy
scoreboard objectives add weakness dummy
scoreboard objectives add slowness dummy

scoreboard objectives add invisibility dummy
scoreboard objectives add speed_pot dummy
scoreboard objectives add strength dummy
scoreboard objectives add fire_resistance dummy

scoreboard objectives add binding_timer dummy

scoreboard objectives add speed dummy
scoreboard objectives add range dummy
scoreboard objectives add x dummy
scoreboard objectives add z dummy
scoreboard objectives add distance dummy
scoreboard objectives add turnCount dummy

scoreboard objectives add food food
scoreboard objectives add saturation dummy
scoreboard objectives add sat.overflow dummy

scoreboard objectives add endTurn minecraft.dropped:carrot_on_a_stick

scoreboard objectives add display dummy

scoreboard objectives add tnt dummy

# Stuff for advancements, kind of sloppy, but also the only way to do it
scoreboard objectives add talkToVillager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add wins dummy
scoreboard objectives add winstreak dummy
scoreboard objectives add losses dummy
scoreboard objectives add play.end dummy
scoreboard objectives add play.nether dummy
scoreboard objectives add play.overworld dummy
scoreboard objectives add play.potion dummy
scoreboard objectives add play.armor dummy
scoreboard objectives add play.trap dummy
scoreboard objectives add play.water dummy
scoreboard objectives add mine.cobble dummy
scoreboard objectives add conversions dummy
scoreboard objectives add entity.kills dummy
scoreboard objectives add entity.deaths dummy
scoreboard objectives add play.piston dummy
scoreboard objectives add tnt.kills dummy


# CONSTANTS
scoreboard players set #-1 var -1
scoreboard players set #2 var 2
scoreboard players set #8 var 8
scoreboard players set #20 var 20
scoreboard players set #400 var 400
scoreboard players set #1200 var 1200
#-1 var

kill @e[tag=display]
#summon armor_stand 8 212 -29 {Invisible:1b,Marker:1b,Tags:["display"],CustomNameVisible:1b,CustomName:'{"text":"߷"}'}
summon armor_stand 3 203 -17 {Invisible:1b,Marker:1b,Tags:["display"],CustomNameVisible:1b,CustomName:'{"text":"Jump off to spectate"}'}
#summon armor_stand -7 203 8 {Invisible:1b,Marker:1b,Tags:["display"],CustomNameVisible:1b,CustomName:'{"text":"🧱"}'}

summon armor_stand 8 204 23 {Invisible:1b,Marker:1b,Tags:["display"],CustomNameVisible:1b,CustomName:'{"text":"Info","color":"yellow","bold":true}'}
summon armor_stand -7 204 8 {Invisible:1b,Marker:1b,Tags:["display"],CustomNameVisible:1b,CustomName:'{"text":"Play","color":"green","bold":true}'}
summon armor_stand 23 204 8 {Invisible:1b,Marker:1b,Tags:["display"],CustomNameVisible:1b,CustomName:'{"text":"Workshop","color":"gold","bold":true}'}

#front_text:{messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']}

data merge block 20 217 20 {Text2:'{"text":"Reward","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"function main:lobby/parkour"}}',Text3:'{"text":"[Right Click]","color":"dark_green"}'}
data merge block 6 200 22 {Text3:'{"color":"dark_green","text":"[Right Click]"}',Text2:'{"color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"function main:arena/create/tutorial"},"text":"Tutorial"}'}
data merge block 5 200 22 {front_text:{messages:['{"text":""}','{"color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"function main:arena/create/tutorial_skip"},"text":"Practice Board"}','{"color":"dark_green","text":"[Right Click]"}','{"text":""}']},Text3:'',Text2:''}
# Cheat Book
data merge block 6 200 30 {Text2:'{"text":"Cheating Info","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"function main:arena/create/deck_builder/signs/cheat_info"}}',Text3:'{"text":"[Right Click]","color":"dark_green"}'}

data merge block 10 200 22 {front_text:{messages:['{"text":"Booster Pack","color":"white","bold":true}','{"text":"Purchase for","color":"yellow"}','[{"text":"20","color":"gold"},{"text":"$","color":"white"}]','{"text":"[Right Click]","color":"dark_green","clickEvent":{"action":"run_command","value":"function main:lobby/shop/purchase"}}']}}
data merge block 9 200 22 {front_text:{messages:['{"text":""}','{"text":""}','{"text":"<<<<<","color":"dark_green","clickEvent":{"action":"run_command","value":"function main:lobby/shop/left"}}','{"text":""}']}}
data merge block 11 200 22 {front_text:{messages:['{"text":""}','{"text":""}','{"text":">>>>>","color":"dark_green","clickEvent":{"action":"run_command","value":"function main:lobby/shop/right"}}','{"text":""}']}}

data merge block -3 200 19 {Color:"-1",Text1:'{"text":"Special Thanks:","color":"dark_purple"}',Text2:'{"text":"Stickypiston","color":"green","bold":true}',Text3:'{"text":"Server Hosting","color":"green","bold":true}',Text4:'{"text":"[Right Click]","color":"dark_green","clickEvent":{"action":"run_command","value":"function main:lobby/stickypiston"}}'}

## Shop Transition
summon item_display 10 202.25 24 {Tags:["shop.display.new_left","transition","shop.display","display"],billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[0f,0f,0f]},interpolation_duration:3}
summon item_display 10 202.25 24 {Tags:["shop.display.new_right","transition","shop.display","display"],billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[0f,0f,0f]},interpolation_duration:3}

summon item_display 10 202.25 24 {Tags:["shop.display.left_transition","transition","shop.display","display"],billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[1f,1f,1f]},interpolation_duration:3}
summon item_display 10 202.25 24 {Tags:["shop.display.left","shop.display","display"],billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,0f,-0.5f],scale:[1f,1f,1f]}}

summon item_display 10 202.25 24 {Tags:["shop.display.center_transition","transition","shop.display","display"],billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-1f],scale:[2f,2f,2f]},interpolation_duration:3}
summon item_display 10 202.25 24 {Tags:["shop.display.center","shop.display","display"],billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-1f],scale:[2f,2f,2f]}}

summon item_display 10 202.25 24 {Tags:["shop.display.right_transition","transition","shop.display","display"],billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-0.5f],scale:[1f,1f,1f]},interpolation_duration:3}
summon item_display 10 202.25 24 {Tags:["shop.display.right","shop.display","display"],billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-0.5f],scale:[1f,1f,1f]}}

scoreboard players set #shop display 0
function main:lobby/shop/display

summon villager 6 200 24 {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["display","stephen","follow"],CustomName:'{"text":"Stephen","color":"yellow"}',VillagerData:{profession:"minecraft:mason",type:"minecraft:plains"},Offers:{}}

summon minecraft:glow_item_frame 25 201 5 {Fixed:1b,Tags:["display"],Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:54}},ItemRotation:3b,Facing:1b}
summon minecraft:glow_item_frame 25 201 7 {Fixed:1b,Tags:["display"],Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:15}},ItemRotation:1b,Facing:1b}
summon minecraft:glow_item_frame 25 201 10 {Fixed:1b,Tags:["display"],Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:23}},ItemRotation:2b,Facing:1b}
summon minecraft:glow_item_frame 24 201 12 {Fixed:1b,Tags:["display"],Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:74}},ItemRotation:4b,Facing:1b}

summon interaction 10 214 6 {width:0.5f,height:0.5f,response:0b,Tags:["display"]}
summon interaction 10 214 10 {width:0.5f,height:0.5f,response:0b,Tags:["display"]}
summon interaction 6 214 10 {width:0.5f,height:0.5f,response:0b,Tags:["display"]}
summon interaction 6 214 6 {width:0.5f,height:0.5f,response:0b,Tags:["display"]}
summon interaction -7 201 10 {width:0.5f,height:0.5f,response:0b,Tags:["display"]}
summon interaction -7 201 6 {width:0.5f,height:0.5f,response:0b,Tags:["display"]}
# Safety sign
setblock 0 1 1 minecraft:acacia_sign

#function main:advertise
kill @e[tag=lobby.npc]
summon armor_stand 20 200 -2 {Tags:["lobby.npc"],ShowArms:1b,Pose:{Body:[8f,0f,0f],LeftArm:[360f,21f,0f],RightArm:[275f,344f,0f],LeftLeg:[272f,355f,14f],RightLeg:[283f,13f,360f],Head:[27f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1835008}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10719584}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2697727}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"LegoBro"}}]}
summon villager 20 200 -2 {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["lobby.npc","display","LegoBro"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Offers:{}}

summon armor_stand 24 200 6 {ShowArms:1b,DisabledSlots:4144959,Silent:1b,Invulnerable:1b,Tags:["lobby.npc","follow"],Pose:{Body:[8f,0f,0f],RightArm:[309f,0f,18f],LeftArm:[8f,205f,0f],LeftLeg:[343f,325f,0f],RightLeg:[8f,17f,7f]},HandItems:[{id:"minecraft:paper",Count:1b,tag:{CustomModelData:7}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4282684}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3188223}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11403206}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"ThatGreenGem"}}]}
summon villager 24 200 6 {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["lobby.npc","display","gem"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Offers:{}}

summon armor_stand -2 200 -4 {Rotation:[270f],Tags:["lobby.npc"],ShowArms:1b,Pose:{Body:[8f,0f,0f],LeftArm:[360f,21f,0f],RightArm:[350f,344f,0f],LeftLeg:[272f,355f,14f],RightLeg:[283f,13f,360f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:paper",Count:1b,tag:{CustomModelData:3}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1835008}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:788999}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1381654}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"thinkrocks12"}}]}
summon villager -2 200 -4 {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["lobby.npc","display","think"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Offers:{}}

summon armor_stand 11 200 28 {Rotation:[90f],Tags:["lobby.npc"],ShowArms:1b,Pose:{Body:[8f,0f,0f],LeftLeg:[335f,325f,0f],RightLeg:[335f,17f,7f],LeftArm:[0f,0f,334f],RightArm:[8f,205f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1835008}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2565409}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3289665}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"J_Brimstone"}}]}
summon villager 11 200 28 {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["lobby.npc","display","j"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Offers:{}}

summon armor_stand 5.245 205 29.314 {Tags:["lobby.npc"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[10f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:4075054}},Count:1b},{id:"minecraft:leather_leggings",tag:{display:{color:10561065}},Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:10561065}},Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1220400931,2005419403,-2039953282,-447624220],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWIzM2RhNTIxOWQzY2FkMjJmNWI4NjM5NjhlOWE3NGZkOTNiYmMwZDA3M2Y4ZDRmMzcxNTM4ODY4YWFkY2JkNyJ9fX0="}]}}}}],HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:129},Count:1b},{}],CustomName:'{"text":"RedstoneBattery"}',DisabledSlots:4144959,Pose:{Body:[0f,9f,1f],Head:[0f,44f,3f],LeftLeg:[276f,359f,3f],RightLeg:[298f,29f,7f],LeftArm:[9f,44f,0f],RightArm:[323f,49f,0f]}}
summon villager 5.245 205 29.314 {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["lobby.npc","display","redstone"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Offers:{}}

# Coffee
summon block_display 17.22 201.03125 -4.0 {block_state:{Name:"minecraft:magenta_carpet"},Tags:["display"],Rotation:[32.0f,0.0f]}
summon villager 17.35 200 -3.3 {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["lobby.npc","display","coffee"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Offers:{}}

function music:load