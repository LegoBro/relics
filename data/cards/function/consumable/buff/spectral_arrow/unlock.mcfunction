give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.spectral_arrow.lore.0","color":"white","italic":false},{"translate":"card.spectral_arrow.lore.1","color":"white","italic":false}],item_name={"color":"green","translate":"card.spectral_arrow"}, minecraft:unbreakable={},item_model="cards/spectral_arrow",custom_data={gui:False, card:{id:44,category:"consumable",element:"buff",rarity:"uncommon",name:"spectral_arrow",cost:8,placement:7}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/spectral_arrow"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/spectral_arrow/change
item replace entity @s enderchest.0 from block 0 0 0 container.0