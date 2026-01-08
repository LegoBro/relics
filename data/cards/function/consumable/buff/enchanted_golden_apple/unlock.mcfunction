give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 20","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.enchanted_golden_apple.lore.0","color":"white","italic":false},{"translate":"card.enchanted_golden_apple.lore.1","color":"white","italic":false},{"translate":"card.enchanted_golden_apple.lore.2","color":"white","italic":false}],item_name={"color":"green","translate":"card.enchanted_golden_apple"}, minecraft:unbreakable={},item_model="cards/enchanted_golden_apple",custom_data={gui:False, card:{id:53,category:"consumable",element:"buff",rarity:"legendary",name:"enchanted_golden_apple",cost:20,placement:5}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/enchanted_golden_apple"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/enchanted_golden_apple/change
item replace entity @s enderchest.0 from block 0 0 0 container.0