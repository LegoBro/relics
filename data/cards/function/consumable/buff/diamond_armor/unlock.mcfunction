give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 10","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.diamond_armor.lore.0","color":"white","italic":false},{"translate":"card.diamond_armor.lore.1","color":"white","italic":false}],item_name={"color":"green","translate":"card.diamond_armor"}, minecraft:unbreakable={},item_model="cards/diamond_armor",custom_data={gui:False, card:{id:48,category:"consumable",element:"buff",rarity:"rare",name:"diamond_armor",cost:10,placement:5}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/diamond_armor"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/diamond_armor/change
item replace entity @s enderchest.0 from block 0 0 0 container.0