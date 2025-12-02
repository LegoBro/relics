## Safety net for offhand - force it to store "It's a feature, not a sloppy fix for a bug..."
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~ ~ ~ container.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand with air