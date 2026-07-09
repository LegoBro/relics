
stopsound @s record

# Moss Stadium

scoreboard players add @s music.track 0
execute if entity @s[scores={music.time=0..,set.music=0,music.track=..6}] run function music:play/left_to_bloom
execute if entity @s[scores={music.time=0..,set.music=0,music.track=7}] run function music:play/stand_tall
execute if entity @s[scores={music.time=0..,set.music=0,music.track=8..}] run function music:play/one_more_day

# Nether
execute if entity @s[scores={music.time=0..,set.music=1,music.track=..9}] run function music:play/rubedo
execute if entity @s[scores={music.time=0..,set.music=1,music.track=10}] run function music:play/so_below
execute if entity @s[scores={music.time=0..,set.music=1,music.track=11}] run function music:play/concrete_halls
execute if entity @s[scores={music.time=0..,set.music=1,music.track=12}] run function music:play/dead_voxel
execute if entity @s[scores={music.time=0..,set.music=1,music.track=13}] run function music:play/warmth
execute if entity @s[scores={music.time=0..,set.music=1,music.track=14}] run function music:play/ballad_of_the_cats
execute if entity @s[scores={music.time=0..,set.music=1,music.track=15..}] run function music:play/chrysopoeia

# End
execute if entity @s[scores={music.time=0..,set.music=2,music.track=..16}] run function music:play/credits
execute if entity @s[scores={music.time=0..,set.music=2,music.track=17}] run function music:play/end
execute if entity @s[scores={music.time=0..,set.music=2,music.track=18..}] run function music:play/boss

# Deepest Dark
execute if entity @s[scores={music.time=0..,set.music=3,music.track=..19}] run function music:play/ancestry
execute if entity @s[scores={music.time=0..,set.music=3,music.track=20}] run function music:play/13
execute if entity @s[scores={music.time=0..,set.music=3,music.track=21}] run function music:play/5
execute if entity @s[scores={music.time=0..,set.music=3,music.track=22..}] run function music:play/wending

# Mineshaft
execute if entity @s[scores={music.time=0..,set.music=4,music.track=..23}] run function music:play/living_mice
execute if entity @s[scores={music.time=0..,set.music=4,music.track=24}] run function music:play/haggstrom
execute if entity @s[scores={music.time=0..,set.music=4,music.track=25}] run function music:play/danny
execute if entity @s[scores={music.time=0..,set.music=4,music.track=26}] run function music:play/key
execute if entity @s[scores={music.time=0..,set.music=4,music.track=27}] run function music:play/oxygene
execute if entity @s[scores={music.time=0..,set.music=4,music.track=28..}] run function music:play/subwoofer_lullaby

# In the Sky
execute if entity @s[scores={music.time=0..,set.music=5,music.track=..0}] run function music:play/blind_spots
execute if entity @s[scores={music.time=0..,set.music=5,music.track=1}] run function music:play/haunt_muskie
execute if entity @s[scores={music.time=0..,set.music=5,music.track=2}] run function music:play/aria_math
execute if entity @s[scores={music.time=0..,set.music=5,music.track=3}] run function music:play/dreiton
execute if entity @s[scores={music.time=0..,set.music=5,music.track=4}] run function music:play/taswell
execute if entity @s[scores={music.time=0..,set.music=5,music.track=5..}] run function music:play/biome_fest

# Seventh Sea
execute if entity @s[scores={music.time=0..,set.music=6,music.track=..29}] run function music:play/dragon_fish
execute if entity @s[scores={music.time=0..,set.music=6,music.track=30}] run function music:play/shuniji
execute if entity @s[scores={music.time=0..,set.music=6,music.track=31..}] run function music:play/axolotl

# Inside the Geode
execute if entity @s[scores={music.time=0..,set.music=7,music.track=..32}] run function music:play/comforting_memories
execute if entity @s[scores={music.time=0..,set.music=7,music.track=33}] run function music:play/floating_dreams
execute if entity @s[scores={music.time=0..,set.music=7,music.track=34}] run function music:play/infinite_amethyst
execute if entity @s[scores={music.time=0..,set.music=7,music.track=35..}] run function music:play/an_ordinary_day

# Redstone Factory
execute if entity @s[scores={music.time=0..,set.music=8,music.track=..36}] run function music:play/otherside
execute if entity @s[scores={music.time=0..,set.music=8,music.track=37}] run function music:play/cat
execute if entity @s[scores={music.time=0..,set.music=8,music.track=38}] run function music:play/blocks
execute if entity @s[scores={music.time=0..,set.music=8,music.track=39}] run function music:play/chirp
execute if entity @s[scores={music.time=0..,set.music=8,music.track=40}] run function music:play/far
execute if entity @s[scores={music.time=0..,set.music=8,music.track=41}] run function music:play/mall
execute if entity @s[scores={music.time=0..,set.music=8,music.track=42}] run function music:play/mellohi
execute if entity @s[scores={music.time=0..,set.music=8,music.track=43}] run function music:play/stal
execute if entity @s[scores={music.time=0..,set.music=8,music.track=44}] run function music:play/strad
execute if entity @s[scores={music.time=0..,set.music=8,music.track=45}] run function music:play/ward
execute if entity @s[scores={music.time=0..,set.music=8,music.track=46}] run function music:play/wait
execute if entity @s[scores={music.time=0..,set.music=8,music.track=47..}] run function music:play/pigstep

# Tales
execute if entity @s[scores={music.time=0..,set.music=9,music.track=..48}] run function music:play/a_familiar_room
execute if entity @s[scores={music.time=0..,set.music=9,music.track=49}] run function music:play/bromeliad
execute if entity @s[scores={music.time=0..,set.music=9,music.track=50}] run function music:play/crescent_dunes
execute if entity @s[scores={music.time=0..,set.music=9,music.track=51}] run function music:play/echo_in_the_wind
execute if entity @s[scores={music.time=0..,set.music=9,music.track=52..}] run function music:play/relic

## Currently unused tracks:
#execute if score @s music.track matches 53 run function music:play/below_and_above
#execute if score @s music.track matches 54 run function music:play/aerie
#execute if score @s music.track matches 55 run function music:play/broken Clocks
#execute if score @s music.track matches 56 run function music:play/deeper
#execute if score @s music.track matches 57 run function music:play/dry Hands
#execute if score @s music.track matches 58 run function music:play/ebb
#execute if score @s music.track matches 59 run function music:play/eld Unknown
#execute if score @s music.track matches 60 run function music:play/endless
#execute if score @s music.track matches 61 run function music:play/featherfall
#execute if score @s music.track matches 62 run function music:play/fireflies
#execute if score @s music.track matches 63 run function music:play/home
#execute if score @s music.track matches 64 run function music:play/komorebi
#execute if score @s music.track matches 65 run function music:play/labyrinthine
#execute if score @s music.track matches 66 run function music:play/lilypad
#execute if score @s music.track matches 67 run function music:play/nightly
#execute if score @s music.track matches 68 run function music:play/os_piano
#execute if score @s music.track matches 69 run function music:play/pokopoko
#execute if score @s music.track matches 70 run function music:play/puzzlebox
#execute if score @s music.track matches 71 run function music:play/shores
#execute if score @s music.track matches 72 run function music:play/watcher
#execute if score @s music.track matches 73 run function music:play/yakusoku
#execute if score @s music.track matches 74 run function music:play/11
#execute if score @s music.track matches 75 run function music:play/bounce
#execute if score @s music.track matches 76 run function music:play/creator
#execute if score @s music.track matches 77 run function music:play/lava_chicken
#execute if score @s music.track matches 78 run function music:play/precipice
#execute if score @s music.track matches 79 run function music:play/tears