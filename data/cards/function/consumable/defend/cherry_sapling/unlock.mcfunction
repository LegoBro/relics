give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 9","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.cherry_sapling.lore.0","color":"white","italic":false},{"translate":"card.cherry_sapling.lore.1","color":"white","italic":false},{"translate":"card.cherry_sapling.lore.2","color":"white","italic":false},{"translate":"card.cherry_sapling.lore.3","color":"white","italic":false},{"translate":"card.cherry_sapling.lore.4","color":"white","italic":false}],item_name={"color":"#FBB1F2","translate":"card.cherry_sapling"}, minecraft:unbreakable={},item_model="cards/cherry_sapling",custom_data={gui:False, card:{id:141,category:"consumable",element:"defend",rarity:"uncommon",name:"cherry_sapling",cost:9,placement:11}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/cherry_sapling"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/defend/cherry_sapling/change
item replace entity @s enderchest.0 from block 0 0 0 container.0