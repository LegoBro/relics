# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.name_tag","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:carrot_on_a_stick","Count":1,"tag":"{HideFlags:127,display:{Lore:['','[{\"translate\":\"cost\",\"italic\":false,\"color\":\"white\"},{\"text\":\" 13\",\"italic\":false,\"color\":\"white\"}]','{\"text\":\"\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.name_tag.lore.0\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.name_tag.lore.1\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.name_tag.lore.2\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.name_tag.lore.3\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.name_tag.lore.4\",\"color\":\"white\",\"italic\":false}','{\"translate\":\"card.name_tag.lore.5\",\"color\":\"white\",\"italic\":false}'],Name:\"{\\\"translate\\\":\\\"card.name_tag\\\",\\\"italic\\\":false,\\\"color\\\":\\\"green\\\"}\"}}"}}}]
scoreboard players remove @s saturation 13
function cards:consumable/buff/name_tag/activate
function main:player/use_card/store