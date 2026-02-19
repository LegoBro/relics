## Lobby stuff for individual players
execute store result score #y var run data get entity @s Pos[1]
execute if score #y var matches ..198 if entity @s[gamemode=adventure] run function main:player/whoosh/spectator
execute if score #y var matches 200.. if block ~ ~ ~ air if block ~ ~1 ~ air if entity @s[gamemode=spectator] run function main:player/whoosh/adventure
execute if score #y var matches 205.. run tp @s[gamemode=spectator] 8 201 8

execute if score #y var matches ..100 run tp @s ~ ~10 ~

tag @s[advancements={main:trigger/inventory_change=true}] add inv_changed

item replace entity @s[tag=!waiting] hotbar.4 with carrot_on_a_stick[item_model=arrow,item_name={"translate":"duel","italic":false,"color":"blue"}]
item replace entity @s hotbar.8 with gold_nugget[item_name={"translate":"coins","italic":false,"color":"gold"}]

item replace entity @s inventory.11 with pink_carpet[item_name={"translate":"quick_play","italic":false,"color":"green"}]
item replace entity @s inventory.13 with paper[item_model="iron_pickaxe",item_name={"translate":"quick_deck_builder","italic":false,"color":"gold"}]
item replace entity @s inventory.15 with ender_eye[item_name={"translate":"quick_spectate","italic":false,"color":"white"}]

execute store result score #q_play var run clear @s pink_carpet 0
execute store result score #q_deck_builder var run clear @s paper 0
execute store result score #q_spectate var run clear @s ender_eye 0

clear @s[tag=inv_changed]

## BOOK
execute unless score @s[tag=!duel_invited,team=lobby] duel.timer matches ..0 run item replace entity @s hotbar.0 with written_book[item_name={"translate":"game.book","italic":false,"color":"green"},written_book_content={title:"",author:"Deckmaster",pages:[\
    ["",{"translate":"set.gamemodes","color":"dark_gray","bold":true,"underlined":true},\
        "\n",{"translate":"set.gamemodes.classic","color":"gold","bold":false,"underlined":true,"hover_event":{"action":"show_text","value":[{"translate":"set.gamemodes.classic.des"}]},"click_event":{"action":"run_command","command":"/trigger setting set 0"}},\
        "\n",{"translate":"set.gamemodes.mirror","underlined":true,"color":"dark_aqua","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.gamemodes.mirror.des"}]},"click_event":{"action":"run_command","command":"/trigger setting set 1"}},\
        "\n",{"translate":"set.gamemodes.draft","underlined":true,"color":"dark_red","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.gamemodes.draft.des"}]},"click_event":{"action":"run_command","command":"/trigger setting set 2"}},\
        "\n",{"translate":"set.gamemodes.no_draw","underlined":true,"color":"dark_green","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.gamemodes.no_draw.des"}]},"click_event":{"action":"run_command","command":"/trigger setting set 3"}},\
        "\n\n",{"translate":"set.turn_time","bold":true,"color":"gray","underlined":true},\
        {"text":" 30s","color":"blue","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.turn_time.30"}]},"click_event":{"action":"run_command","command":"/trigger setting set 10"}},\
        {"text":" 60s","color":"dark_green","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.turn_time.60"}]},"click_event":{"action":"run_command","command":"/trigger setting set 11"}},\
        "\n\n",{"translate":"set.hand_size","bold":true,"color":"gray","underlined":true},\
        {"text":" 3","color":"red","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.hand_size.3"}]},"click_event":{"action":"run_command","command":"/trigger setting set 20"}},\
        {"text":" 5","color":"gold","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.hand_size.5"}]},"click_event":{"action":"run_command","command":"/trigger setting set 21"}},\
        {"text":" 8","color":"green","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.hand_size.8"}]},"click_event":{"action":"run_command","command":"/trigger setting set 22"}},\
    ],["",\    
        {"translate":"set.fatigue","bold":true,"color":"gray","underlined":true},\
        {"text":" X","color":"red","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.fatigue.disabled"}]},"click_event":{"action":"run_command","command":"/trigger setting set 30"}},\
        {"text":" 1","color":"gold","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.fatigue.1"}]},"click_event":{"action":"run_command","command":"/trigger setting set 31"}},\
        {"text":" 2","color":"green","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.fatigue.2"}]},"click_event":{"action":"run_command","command":"/trigger setting set 32"}},\
        {"text":" 3","color":"dark_green","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.fatigue.3"}]},"click_event":{"action":"run_command","command":"/trigger setting set 33"}},\
        "\n\n",{translate:"set.hero_hp","bold":true,"color":"gray","underlined":true},\
        {"text":" 10","color":"red","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.hero_hp.10.des"}]},"click_event":{"action":"run_command","command":"/trigger setting set 40"}},\
        {"text":" 15","color":"yellow","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.hero_hp.15.des"}]},"click_event":{"action":"run_command","command":"/trigger setting set 41"}},\
        {"text":" 20","color":"dark_green","bold":false,"hover_event":{"action":"show_text","value":[{"translate":"set.hero_hp.20.des"}]},"click_event":{"action":"run_command","command":"/trigger setting set 42"}}\
]]}] 1


item replace entity @s weapon.offhand with air
execute if entity @s[team=waiting] run item replace entity @s hotbar.0 with air
execute if entity @s[team=waiting] run item replace entity @s hotbar.4 with air
execute if entity @s[tag=cheater,predicate=!main:book] run item replace entity @s hotbar.7 with minecraft:writable_book[item_name={"translate":"cheat_book","color":"light_purple"}]

scoreboard players enable @s setting
execute if score @s setting matches 0.. run function main:player/settings/set

scoreboard players enable @s reset
execute if score @s reset matches 0.. run function main:player/reset/trigger

execute if entity @s[nbt={SelectedItemSlot:8},gamemode=adventure,tag=!duel_invited] run title @s actionbar [{"score":{"name":"@s","objective":"dubloons"},"color":"gold"},{"text":"$","color":"white"}]
scoreboard players add @s[scores={duel.timer=..-1}] duel.timer 1
execute if score @s duel.timer matches 0 run function main:player/duel/time_out
execute unless score @s duel.timer matches ..0 if score @s rightClick matches 1.. run function main:player/duel/search
execute if score @s duel.timer matches ..0 run function main:player/duel/tick

scoreboard players reset @s endTurn
scoreboard players reset @s rightClick
scoreboard players reset @s forfeit

execute if score @s talkToVillager matches 1.. run function main:lobby/villager


tag @s remove inv_changed
advancement revoke @s only main:trigger/inventory_change
tag @s remove ender_pearl

execute if score #q_play var matches 2.. run function main:lobby/ready
execute if score #q_deck_builder var matches 2.. run function main:arena/create/deck_builder
execute if score #q_spectate var matches 2.. run tp @s @p[tag=turn]
execute if score #q_spectate var matches 2.. unless entity @p[tag=turn] run playsound minecraft:block.note_block.didgeridoo master @s

## Safety for settings
execute unless score @s set.arena matches 0.. run scoreboard players set @s set.arena 0
execute unless score @s set.hero matches 0.. run scoreboard players set @s set.hero 0
execute unless score @s set.music matches 0.. run scoreboard players set @s set.music 0

execute unless score @s set.mode matches 0.. run scoreboard players set @s set.mode 0
execute unless score @s set.time matches 0.. run scoreboard players set @s set.time 0
execute unless score @s set.handSize matches 3.. run scoreboard players set @s set.handSize 5
execute unless score @s set.fatigue matches -2000000000.. run scoreboard players set @s set.fatigue 0

execute unless score @s set.hero_hp matches 0.. run scoreboard players set @s set.hero_hp 20