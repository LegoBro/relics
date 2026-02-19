## Check Cheats
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"gOtcHa"}]}] run advancement grant @s only main:quests/ambush
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"mo1st"}]}] run advancement grant @s only main:quests/aquatic
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"tankies"}]}] run advancement grant @s only main:quests/armor
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"alchemy"}]}] run advancement grant @s only main:quests/conversion
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"creepy"}]}] run advancement grant @s only main:quests/creeper

execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"Crastle"}]}] run advancement grant @s only main:quests/defend
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"PlzUpdateEnd"}]}] run advancement grant @s only main:quests/end
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"murder"}]}] run advancement grant @s only main:quests/killer
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"sad_face"}]}] run advancement grant @s only main:quests/loser
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"whatTheHeck"}]}] run advancement grant @s only main:quests/nether

execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"itsoveranakin"}]}] run advancement grant @s only main:quests/overworld
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"J_Winstone"}]}] run advancement grant @s only main:quests/parkour
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"BrewMeister"}]}] run advancement grant @s only main:quests/potion
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"RichieRich"}]}] run advancement grant @s only main:quests/rich
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"itsEitherYouOrMe"}]}] run advancement grant @s only main:quests/sacrifice


execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"stickypiston"}]}] run advancement grant @s only main:quests/stickypiston
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"TRAPPER_JOE"}]}] run advancement grant @s only main:quests/trap
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"tutorial"}]}] run advancement grant @s only main:quests/tutorial

execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"Baby_Tristan_hates_relics_grinding"}]}] unless score #prevent_tournaments var matches 1.. run function main:tournament_enable
execute if items entity @s weapon.mainhand *[minecraft:writable_book_content={pages:[{raw:"lets_grind"}]}] unless score #prevent_tournaments var matches 1.. run function main:tournament_disable
