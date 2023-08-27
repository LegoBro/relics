#end turn for entities (generated)
execute if entity @s[tag=card.end] run function cards:entity/end/end_turn_dict
execute if entity @s[tag=card.hero] run function cards:entity/hero/end_turn_dict
execute if entity @s[tag=card.nether] run function cards:entity/nether/end_turn_dict
execute if entity @s[tag=card.overworld] run function cards:entity/overworld/end_turn_dict