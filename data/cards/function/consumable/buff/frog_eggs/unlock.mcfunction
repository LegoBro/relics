give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.frog_eggs.lore.0","color":"white","italic":false},{"translate":"card.frog_eggs.lore.1","color":"white","italic":false}],item_name={"color":"#018a73","translate":"card.frog_eggs"}, minecraft:unbreakable={},item_model="cards/frog_eggs",custom_data={gui:False, card:{id:134,category:"consumable",element:"buff",rarity:"rare",name:"frog_eggs",cost:5,placement:0}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/frog_eggs"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/buff/frog_eggs/change
item replace entity @s enderchest.0 from block 0 0 0 container.0