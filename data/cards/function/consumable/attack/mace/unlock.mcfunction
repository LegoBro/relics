give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 12","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.mace.lore.0","color":"white","italic":false},{"translate":"card.mace.lore.1","color":"white","italic":false},{"translate":"card.mace.lore.2","color":"white","italic":false}],item_name={"color":"#E0673A","translate":"card.mace"}, minecraft:unbreakable={},item_model="cards/mace",custom_data={gui:False, card:{id:154,category:"consumable",element:"attack",rarity:"legendary",name:"mace",cost:12,placement:4}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/mace"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/mace/change
item replace entity @s enderchest.0 from block 0 0 0 container.0