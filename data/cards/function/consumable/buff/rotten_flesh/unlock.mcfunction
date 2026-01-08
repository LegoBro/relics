give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 4","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.rotten_flesh.lore.0","color":"white","italic":false},{"translate":"card.rotten_flesh.lore.1","color":"white","italic":false},{"translate":"card.rotten_flesh.lore.2","color":"white","italic":false},{"translate":"card.rotten_flesh.lore.3","color":"white","italic":false}],item_name={"color":"#FBB1F2","translate":"card.rotten_flesh"}, minecraft:unbreakable={},item_model="cards/rotten_flesh",custom_data={gui:False, card:{id:135,category:"consumable",element:"buff",rarity:"common",name:"rotten_flesh",cost:4,placement:16}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/rotten_flesh"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/rotten_flesh/change
item replace entity @s enderchest.0 from block 0 0 0 container.0