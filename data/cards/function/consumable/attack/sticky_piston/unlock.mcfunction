give @s carrot_on_a_stick[lore=[[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.sticky_piston.lore.0","color":"white","italic":false},{"translate":"card.sticky_piston.lore.1","color":"white","italic":false}],item_name={"color":"#b4d99e","translate":"card.sticky_piston"}, minecraft:unbreakable={},item_model="cards/sticky_piston",custom_data={gui:False, card:{id:122,category:"consumable",element:"attack",rarity:"uncommon",name:"sticky_piston",cost:8,placement:14}}]
item replace entity @s weapon.offhand with minecraft:totem_of_undying[item_model="cards/sticky_piston"]
effect give @s minecraft:instant_damage 1 100
scoreboard players set #change var 1
data merge block 0 0 0 {}
item replace block 0 0 0 container.0 from entity @s enderchest.0
function cards:consumable/attack/sticky_piston/change
item replace entity @s enderchest.0 from block 0 0 0 container.0