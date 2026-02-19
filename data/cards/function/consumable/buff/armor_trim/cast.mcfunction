# Casts the consumable card
tellraw @a[tag=id] {"translate":"cast.use",color:green,"with":[{"selector":"@s"},{"underlined":true,"translate":"card.armor_trim","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#FBB1F2","translate":"card.armor_trim"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 0","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.armor_trim.lore.0","color":"white","italic":false}]}}}]}
scoreboard players remove @s saturation 0
function cards:consumable/buff/armor_trim/activate
function main:player/use_card/store