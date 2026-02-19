# Casts the consumable card
tellraw @a[tag=id] {"translate":"cast.use",color:green,"with":[{"selector":"@s"},{"underlined":true,"translate":"card.piston","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#b4d99e","translate":"card.piston"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 6","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.piston.lore.0","color":"white","italic":false},{"translate":"card.piston.lore.1","color":"white","italic":false}]}}}]}
scoreboard players remove @s saturation 6
function cards:consumable/attack/piston/activate
function main:player/use_card/store