## Give advancements at end of game
execute if score @s losses matches 15.. run advancement grant @s only main:quests/loser

execute if score @s entity.kills matches 500.. run advancement grant @s only main:quests/killer
execute if score @s entity.deaths matches 500.. run advancement grant @s only main:quests/sacrifice

execute if score @s play.end matches 50.. run advancement grant @s only main:quests/end
execute if score @s play.nether matches 100.. run advancement grant @s only main:quests/nether
execute if score @s play.overworld matches 250.. run advancement grant @s only main:quests/overworld

execute if score @s play.potion matches 50.. run advancement grant @s only main:quests/potion
execute if score @s play.armor matches 50.. run advancement grant @s only main:quests/armor
execute if score @s play.trap matches 50.. run advancement grant @s only main:quests/trap
execute if score @s play.water matches 50.. run advancement grant @s only main:quests/water
#execute if score @s mine.cobble matches 25.. run advancement grant @s only main:quests/5

execute if score @s conversions matches 25.. run advancement grant @s only main:quests/conversion
