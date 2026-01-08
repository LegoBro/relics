give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 6","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.piston.lore.0","color":"white","italic":false},{"translate":"card.piston.lore.1","color":"white","italic":false}],item_name={"color":"#b4d99e","translate":"card.piston"}, minecraft:unbreakable={},item_model="cards/piston",custom_data={gui:False, card:{id:121,category:"consumable",element:"attack",rarity:"common",name:"piston",cost:6,placement:13}}]
item replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[item_model="cards/piston"]
effect give @s[tag=!fast_open] minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/piston/change
item replace entity @s enderchest.0 from block 0 0 0 container.0