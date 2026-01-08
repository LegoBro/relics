give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 6","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.golden_armor.lore.0","color":"white","italic":false},{"translate":"card.golden_armor.lore.1","color":"white","italic":false}],item_name={"color":"green","translate":"card.golden_armor"}, minecraft:unbreakable={},item_model="cards/golden_armor",custom_data={gui:False, card:{id:47,category:"consumable",element:"buff",rarity:"common",name:"golden_armor",cost:6,placement:5}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/golden_armor"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/golden_armor/change
item replace entity @s enderchest.0 from block 0 0 0 container.0