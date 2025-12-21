give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 0","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.pottery_sherd.lore.0","color":"white","italic":false},{"translate":"card.pottery_sherd.lore.1","color":"white","italic":false},{"translate":"card.pottery_sherd.lore.2","color":"white","italic":false}],item_name={"color":"#FBB1F2","translate":"card.pottery_sherd"}, minecraft:unbreakable={},item_model="cards/pottery_sherd",custom_data={gui:False, card:{id:139,category:"consumable",element:"buff",rarity:"unknown",name:"pottery_sherd",cost:0,placement:5}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/pottery_sherd"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/pottery_sherd/change
item replace entity @s enderchest.0 from block 0 0 0 container.0