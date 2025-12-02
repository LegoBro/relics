## Check Cheats
execute if entity @s[nbt={SelectedItem:{tag:{pages:["gOtcHa"]}}}] run advancement grant @s only main:quests/ambush
execute if entity @s[nbt={SelectedItem:{tag:{pages:["mo1st"]}}}] run advancement grant @s only main:quests/aquatic
execute if entity @s[nbt={SelectedItem:{tag:{pages:["tankies"]}}}] run advancement grant @s only main:quests/armor
execute if entity @s[nbt={SelectedItem:{tag:{pages:["alchemy"]}}}] run advancement grant @s only main:quests/conversion
execute if entity @s[nbt={SelectedItem:{tag:{pages:["creepy"]}}}] run advancement grant @s only main:quests/creeper

execute if entity @s[nbt={SelectedItem:{tag:{pages:["Crastle"]}}}] run advancement grant @s only main:quests/defend
execute if entity @s[nbt={SelectedItem:{tag:{pages:["PlzUpdateEnd"]}}}] run advancement grant @s only main:quests/end
execute if entity @s[nbt={SelectedItem:{tag:{pages:["murder"]}}}] run advancement grant @s only main:quests/killer
execute if entity @s[nbt={SelectedItem:{tag:{pages:["sad_face"]}}}] run advancement grant @s only main:quests/loser
execute if entity @s[nbt={SelectedItem:{tag:{pages:["whatTheHeck"]}}}] run advancement grant @s only main:quests/nether

execute if entity @s[nbt={SelectedItem:{tag:{pages:["itsoveranakin"]}}}] run advancement grant @s only main:quests/overworld
execute if entity @s[nbt={SelectedItem:{tag:{pages:["J_Winstone"]}}}] run advancement grant @s only main:quests/parkour
execute if entity @s[nbt={SelectedItem:{tag:{pages:["BrewMeister"]}}}] run advancement grant @s only main:quests/potion
execute if entity @s[nbt={SelectedItem:{tag:{pages:["RichieRich"]}}}] run advancement grant @s only main:quests/rich
execute if entity @s[nbt={SelectedItem:{tag:{pages:["itsEitherYouOrMe"]}}}] run advancement grant @s only main:quests/sacrifice


execute if entity @s[nbt={SelectedItem:{tag:{pages:["stickypiston"]}}}] run advancement grant @s only main:quests/stickypiston
execute if entity @s[nbt={SelectedItem:{tag:{pages:["TRAPPER_JOE"]}}}] run advancement grant @s only main:quests/trap
execute if entity @s[nbt={SelectedItem:{tag:{pages:["tutorial"]}}}] run advancement grant @s only main:quests/tutorial

execute if entity @s[nbt={SelectedItem:{tag:{pages:["Baby_Tristan_hates_relics_grinding"]}}}] unless score #prevent_tournaments var matches 1.. run function main:tournament_enable
execute if entity @s[nbt={SelectedItem:{tag:{pages:["lets_grind"]}}}] unless score #prevent_tournaments var matches 1.. run function main:tournament_disable
