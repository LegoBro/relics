give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 0","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.armor_trim.lore.0","color":"white","italic":false}],item_name={"color":"#FBB1F2","translate":"card.armor_trim"}, minecraft:unbreakable={},item_model="cards/armor_trim",custom_data={gui:False, card:{id:140,category:"consumable",element:"buff",rarity:"unknown",name:"armor_trim",cost:0,placement:0}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/armor_trim"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/armor_trim/change
item replace entity @s enderchest.0 from block 0 0 0 container.0