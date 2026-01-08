## Sets player hero skin
# Skip steve = default
# Alex
execute if score #set.hero var matches 1 run data merge entity @s {profile:"MHF_Alex",equipment:{ mainhand:{id:"minecraft:diamond_hoe",count:1b}},CustomName:{"text":"Alex"}}

execute if score #set.hero var matches 2 run data merge entity @s {profile:{properties:[{"name":"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGJhMzk2MTk4MjA5MWNmMTNlNzk3ZDg2MDc4MDgyNjRiM2U1ZTNlMzRlNThjODdlYmMyOWZhZDBhZjQyYTFiYyJ9fX0="}]},equipment:{mainhand:{id:"minecraft:emerald",count:1b}},CustomName:{"text":"Handsome Jerry"}}

execute if score #set.hero var matches 3 run data merge entity @s {profile:{properties:[{"name":"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFlZmQ0N2I1NmI1NmZmZmVlMTJmMDU2NTYzMTgzNDY3NDMzZjljZjY2NTNjMDAzNTNmODA5Nzg5MTMzNWQyMSJ9fX0="}]},equipment:{mainhand:{id:"minecraft:pink_dye",count:1b}},CustomName:{"text":"Bubblegum Barb"}}

execute if score #set.hero var matches 4 run data merge entity @s {profile:"PheonixSC",equipment:{mainhand:{id:"minecraft:flint_and_steel",count:1b}},CustomName:{"text":"Heated Memer"}}

execute if score #set.hero var matches 5 run data merge entity @s {profile:"CaptainSparklez",equipment:{mainhand:{id:"minecraft:music_disc_pigstep",count:1b}},CustomName:{"text":"Dancer"}}
# Xisuma
execute if score #set.hero var matches 6 run data merge entity @s {profile:"Xisuma",equipment:{mainhand:{id:"minecraft:netherite_sword",count:1b}},CustomName:{"text":"Slayer"}}
# Etho
execute if score #set.hero var matches 7 run data merge entity @s {profile:"Etho",equipment:{mainhand:{id:"minecraft:anvil",count:1b}},CustomName:{"text":"Trickster"}}
# LegoBro
execute if score #set.hero var matches 8 run data merge entity @s {profile:{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc2NzY1NDY0Mzc2OSwKICAicHJvZmlsZUlkIiA6ICI1NTUyYzM3Y2MzYWI0YzBlODgwYzJiN2FmOTg1OTE3NSIsCiAgInByb2ZpbGVOYW1lIiA6ICJMZWdvQnJvIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzRiYzk5NWM1ZmE3OWRlODIyMDBiMTg0ZTViZGZhYzVlMjMyZjVhM2FiOTE0ZDdiNDg0Mjc5MWFkNmFlYWYxMDkiCiAgICB9CiAgfQp9"}]},equipment:{mainhand:{id:"minecraft:iron_ingot",count:1b}},CustomName:{"text":"The Deckmaster"}}

scoreboard players operation @s set.hero = #set.hero var