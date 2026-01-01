# hit with ning of light
execute at @e[tag=id,tag=lightning_rod] run function cards:consumable/defend/lightning_rod/absorb
execute unless entity @e[tag=id,tag=lightning_rod] at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] run function cards:consumable/attack/trident/damage

