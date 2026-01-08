give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 4","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.arrow_storm.lore.0","color":"white","italic":false},{"translate":"card.arrow_storm.lore.1","color":"white","italic":false},{"translate":"card.arrow_storm.lore.2","color":"white","italic":false}],item_name={"color":"green","translate":"card.arrow_storm"}, minecraft:unbreakable={},item_model="cards/arrow_storm",custom_data={gui:False, card:{id:20,category:"consumable",element:"attack",rarity:"common",name:"arrow_storm",cost:4,placement:4}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/arrow_storm"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/arrow_storm/change
item replace entity @s enderchest.0 from block 0 0 0 container.0