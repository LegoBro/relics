setblock ~ ~ ~ structure_block
# Grass
execute if score @s[tag=player.1] set.arena matches 0 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/grass/1"}
execute if score @s[tag=player.2] set.arena matches 0 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/grass/2"}
# Nether
execute if score @s[tag=player.1] set.arena matches 1 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/nether/1"}
execute if score @s[tag=player.2] set.arena matches 1 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/nether/2"}
# Nether
execute if score @s[tag=player.1] set.arena matches 2 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/end/1"}
execute if score @s[tag=player.2] set.arena matches 2 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/end/2"}
# Deep
execute if score @s[tag=player.1] set.arena matches 3 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/deep/1"}
execute if score @s[tag=player.2] set.arena matches 3 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/deep/2"}
# Cave
execute if score @s[tag=player.1] set.arena matches 4 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/cave/1"}
execute if score @s[tag=player.2] set.arena matches 4 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/cave/2"}
# sky
execute if score @s[tag=player.1] set.arena matches 5 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/sky/1"}
execute if score @s[tag=player.2] set.arena matches 5 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/sky/2"}
# sea
execute if score @s[tag=player.1] set.arena matches 6 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/sea/1"}
execute if score @s[tag=player.2] set.arena matches 6 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/sea/2"}
# amethyst
execute if score @s[tag=player.1] set.arena matches 7 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/amethyst/1"}
execute if score @s[tag=player.2] set.arena matches 7 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/amethyst/2"}
# redstone
execute if score @s[tag=player.1] set.arena matches 8 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/redstone/1"}
execute if score @s[tag=player.2] set.arena matches 8 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/redstone/2"}
# village
execute if score @s[tag=player.1] set.arena matches 9 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/village/1"}
execute if score @s[tag=player.2] set.arena matches 9 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/village/2"}
# jungle
execute if score @s[tag=player.1] set.arena matches 10 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/jungle/1"}
execute if score @s[tag=player.2] set.arena matches 10 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/jungle/2"}
# mansion
execute if score @s[tag=player.1] set.arena matches 11 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/mansion/1"}
execute if score @s[tag=player.2] set.arena matches 11 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/mansion/2"}
# ocean
execute if score @s[tag=player.1] set.arena matches 12 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/ocean/1"}
execute if score @s[tag=player.2] set.arena matches 12 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/ocean/2"}
# mangrove
execute if score @s[tag=player.1] set.arena matches 13 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/mangrove/1"}
execute if score @s[tag=player.2] set.arena matches 13 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/mangrove/2"}
# zen
execute if score @s[tag=player.1] set.arena matches 14 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/zen/1"}
execute if score @s[tag=player.2] set.arena matches 14 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/zen/2"}
# usea
execute if score @s[tag=player.1] set.arena matches 15 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/usea/1"}
execute if score @s[tag=player.2] set.arena matches 15 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/usea/2"}
# bee
execute if score @s[tag=player.1] set.arena matches 16 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/bee/1"}
execute if score @s[tag=player.2] set.arena matches 16 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/bee/2"}
# fort
execute if score @s[tag=player.1] set.arena matches 17 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/fort/1"}
execute if score @s[tag=player.2] set.arena matches 17 run data merge block ~ ~ ~ {ignoreEntities:0b,rotation: "NONE", mode:"LOAD", posX:0,posY:0,posZ:0,sizeX:32,sizeZ:32,sizeY:32,name:"main:arena/arena/fort/2"}


setblock ~ ~1 ~ redstone_block