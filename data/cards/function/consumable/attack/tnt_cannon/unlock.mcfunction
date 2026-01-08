give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 14","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.tnt_cannon.lore.0","color":"white","italic":false},{"translate":"card.tnt_cannon.lore.1","color":"white","italic":false},{"translate":"card.tnt_cannon.lore.2","color":"white","italic":false}],item_name={"color":"green","translate":"card.tnt_cannon"}, minecraft:unbreakable={},item_model="cards/tnt_cannon",custom_data={gui:False, card:{id:93,category:"consumable",element:"attack",rarity:"epic",name:"tnt_cannon",cost:14,placement:0}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/tnt_cannon"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/tnt_cannon/change
item replace entity @s enderchest.0 from block 0 0 0 container.0