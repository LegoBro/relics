give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.wind_charge.lore.0","color":"white","italic":false},{"translate":"card.wind_charge.lore.1","color":"white","italic":false},{"translate":"card.wind_charge.lore.2","color":"white","italic":false}],item_name={"color":"#E0673A","translate":"card.wind_charge"}, minecraft:unbreakable={},item_model="cards/wind_charge",custom_data={gui:False, card:{id:156,category:"consumable",element:"attack",rarity:"uncommon",name:"wind_charge",cost:8,placement:0}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/wind_charge"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/wind_charge/change
item replace entity @s enderchest.0 from block 0 0 0 container.0