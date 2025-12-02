## Lobby stuff for individual players
execute store result score #y var run data get entity @s Pos[1]
execute if score #y var matches ..198 if entity @s[gamemode=adventure] run function main:player/whoosh/spectator
execute if score #y var matches 200.. if block ~ ~ ~ air if block ~ ~1 ~ air if entity @s[gamemode=spectator] run function main:player/whoosh/adventure
execute if score #y var matches 205.. run tp @s[gamemode=spectator] 8 201 8

execute if score #y var matches ..100 run tp @s ~ ~10 ~

tag @s[advancements={main:trigger/inventory_change=true}] add inv_changed

item replace entity @s[tag=!waiting] hotbar.4 with carrot_on_a_stick{display:{Name:'{"translate":"duel","italic":false,"color":"blue"}'}}
item replace entity @s hotbar.8 with gold_nugget{display:{Name:'{"translate":"coins","italic":false,"color":"gold"}'}}

item replace entity @s inventory.11 with pink_carpet{display:{Name:'{"translate":"quick_play","italic":false,"color":"green"}'}}
item replace entity @s inventory.13 with paper{display:{Name:'{"translate":"quick_deck_builder","italic":false,"color":"gold"}'}}
item replace entity @s inventory.15 with ender_eye{display:{Name:'{"translate":"quick_spectate","italic":false,"color":"white"}'}}

execute store result score #q_play var run clear @s pink_carpet 0
execute store result score #q_deck_builder var run clear @s paper 0
execute store result score #q_spectate var run clear @s ender_eye 0

clear @s[tag=inv_changed]

execute unless score @s[tag=!duel_invited,team=lobby] duel.timer matches ..0 run item replace entity @s hotbar.0 with written_book{display:{Name:'{"translate":"game.book","italic":false,"color":"green"}'},title:"",author:"Deckmaster",pages:['["",{"translate":"Gamemodes:","color":"dark_gray","bold":true,"underlined":true},{"text":"\\nClassic","color":"gold","bold":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Classic gamemode that uses your decks."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 0"}},{"text":"\\nMirror","underlined":true,"color":"dark_aqua","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Both players are given the same premade deck."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 1"}},{"text":"\\nDraft","underlined":true,"color":"dark_red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Both players pick one card to keep and one to give to their opponent until their deck is built."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 2"}},{"text":"\\nNo Draw","underlined":true,"color":"dark_green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Get your entire deck immediately, but you can not draw anymore."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 3"}},{"text":"\\n\\nTurn Time:","bold":true,"color":"gray","underlined":true},{"text":" 30s","color":"blue","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"30 second turn time."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 10"}},{"text":" 60s","color":"dark_green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"60 second turn time."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 11"}},{"text":"\\n\\nHand Size:","bold":true,"color":"gray","underlined":true},{"text":" 3","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"You can draw up to 3 cards. (more can be gained from events)"}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 20"}},{"text":" 5","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"You can draw up to 5 cards. (more can be gained from events)"}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 21"}},{"text":" 8","color":"green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"You can draw up to 8 cards. (more can be gained from events)"}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 22"}},{"text":"\\n\\nFatigue:","bold":true,"color":"gray","underlined":true},{"text":" X","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Fatigue Disabled."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 30"}},{"text":" 1","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Take fatigue damage after 1 deck reshuffle."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 31"}},{"text":" 2","color":"green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Take fatigue damage after 2 deck reshuffles."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 32"}},{"text":" 3","color":"dark_green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Take fatigue damage after 3 deck reshuffles."}]},"clickEvent":{"action":"run_command","value":"/trigger setting set 33"}}]']} 1


item replace entity @s weapon.offhand with air
execute if entity @s[team=waiting] run item replace entity @s hotbar.0 with air
execute if entity @s[team=waiting] run item replace entity @s hotbar.4 with air
execute if entity @s[tag=cheater,predicate=!main:book] run item replace entity @s hotbar.7 with minecraft:writable_book{display:{Name:'{"translate":"cheat_book","color":"light_purple"}'}}

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