# Generates stuff - new version
import generator
import json


def createCard(yaml_path):
    # print(generator.readYaml(yaml_path))
    card = generator.readYaml(yaml_path)["card"]
    path = f"./{card['type']}/{card['element']}/{card['name']}"
    generator.recursiveCreateFolder(path)


    # /give @p carrot_on_a_stick[lore=[{"color":"white","italic":true,"translate":"cost"}],item_name={"color":"green","translate":"card.zombie"},item_model="item/card/zombie",custom_data={card:{trash:1b,category:"entity",element:"overworld",rarity:"common",name:"zombie",cost:2,placement:10}}] 1

    lore = "lore=[" # May include a ' after [ and before ]

    if card['type'] == "entity":
        lore += f'[{{"translate":"cost","italic":false,"color":"white"}},{{"text":" {card["cost"]}","italic":false,"color":"white"}},{{"text":"        {card["health"]} ","italic":false,"color":"white"}},{{"translate":"health","italic":false,"color":"white"}}]'
        if  "armor" in card.keys():
            pass
        else:
            card["armor"] = 0
            pass
        lore += f',[{{"translate":"attack","italic":false,"color":"white"}},{{"text":" {card["attack"]}","italic":false,"color":"white"}},{{"text":"        {card["armor"]} ","italic":false,"color":"white"}},{{"translate":"armor","italic":false,"color":"white"}}]'
        lore += f',[{{"translate":"speed","italic":false,"color":"white"}},{{"text":" {card["speed"]}","italic":false,"color":"white"}},{{"text":"        {card["range"]} ","italic":false,"color":"white"}},{{"translate":"range","italic":false,"color":"white"}}]'


    elif card['type'] == 'consumable':
        lore += f'[{{"translate":"cost","italic":false,"color":"white"}},{{"text":" {card["cost"]}","italic":false,"color":"white"}}]'

    loreTextArray = card["lore"].split()
    maxLoreLength = 20
    finalLoreArray = [""]
    finalLoreIndex = 0
    finalLoreCounter = 0
    for word in loreTextArray:
        #print(len(word))
        if len(word) + finalLoreCounter <= maxLoreLength:
            finalLoreCounter += len(word)
            finalLoreArray[finalLoreIndex] = finalLoreArray[finalLoreIndex] + " " + word
            pass
        else:
            finalLoreIndex += 1
            finalLoreCounter = 0
            finalLoreArray.append(word)
            pass
        pass

    lore += f',{{"text":"","color":"white","italic":false}}'

    name = card["name"].replace("_"," ").title()

#### PRINT LORE
    print(f'"card.{card["name"]}": "{name}",') #Name translation key

    for line in range(0,len(finalLoreArray)):
        lore += f',{{"translate":"card.{card["name"]}.lore.{line}","color":"white","italic":false}}' # Lore Translation Key(s)

        print(f'"card.{card["name"]}.lore.{line}": "{finalLoreArray[line]}",')
        pass


    lore += "]"

    tellraw_lore = lore.replace('/"','"').replace("lore=","")

    item_name = 'item_name={"color":"' + card["color"] + '","translate":"card.' + card["name"] + '"}'

    discover_item_name = 'item_name={"color":"' + card["color"] + '","translate":"card.' + card["name"] + '", "italic": true}'

    item_model = 'item_model="cards/'+ card["name"] +'"'

    custom_data = "custom_data={gui:false, card:{id:" + str(card["model_id"]) + ",category:\"" + card["type"] + "\",element:\"" + card["element"] + "\",rarity:\"" + card["rarity"] + "\",name:\"" + card["name"] + "\",cost:" + str(card["cost"]) + ",placement:" + str(card["placement"]) + "}}"

    discover_custom_data = "custom_data={trash:1b, card:{id:" + str(card["model_id"]) + ",category:\"" + card["type"] + "\",element:\"" + card["element"] + "\",rarity:\"" + card["rarity"] + "\",name:\"" + card["name"] + "\",cost:" + str(card["cost"]) + ",placement:" + str(card["placement"]) + "}}"

    insert_custom_data = "custom_data={gui:True, card:{id:" + str(card["model_id"]) + ",category:\"" + card["type"] + "\",element:\"" + card["element"] + "\",rarity:\"" + card["rarity"] + "\",name:\"" + card["name"] + "\",cost:" + str(card["cost"]) + ",placement:" + str(card["placement"]) + "}}"

    item = "carrot_on_a_stick[" + lore + ',' + item_name + ", minecraft:unbreakable={}," + item_model + "," + custom_data + "]"

    discover_item = "carrot_on_a_stick[" + lore + ',' + discover_item_name + ", minecraft:unbreakable={}," + item_model + "," + discover_custom_data + "]"

    insert_item_data = "[" + lore + ',' + item_name + ", minecraft:unbreakable={}," + item_model + "," + insert_custom_data + "]"

    empty_insert_item_data = "[" + lore + ',' + item_name + ", minecraft:unbreakable={}," + insert_custom_data + ", item_model='air']"

    unlock_custom_data = "custom_data={gui:False, card:{id:" + str(card["model_id"]) + ",category:\"" + card["type"] + "\",element:\"" + card["element"] + "\",rarity:\"" + card["rarity"] + "\",name:\"" + card["name"] + "\",cost:" + str(card["cost"]) + ",placement:" + str(card["placement"]) + "}}"

    unlock_item = "carrot_on_a_stick[" + lore + ',' + item_name + ", minecraft:unbreakable={}," + item_model + "," + unlock_custom_data + "]"

    give_command = "give @s " + item
    
    
    generator.writeFunction(path + "/give", give_command)

    insert_command = "execute store result score #any var run data get entity @s EnderItems[0].components.\"minecraft:custom_data\".Collection[{id:" + str(card["model_id"]) + "}].count"
    
    insert_command += "\nexecute unless score #any var matches 1.. run item replace block 0 0 0 container.0 with iron_nugget[custom_data={gui:True}," + item_name + "]"
    
    insert_command += "\nexecute store result score #count var run data get entity @s EnderItems[1].components.\"minecraft:custom_data\".Collection[{id:" + str(card["model_id"]) + "}].count"
    insert_command += "\nexecute if score #any var matches 1.. if score #count var matches 1.. run item replace block 0 0 0 container.0 with carrot_on_a_stick" + insert_item_data
    insert_command += "\nexecute if score #any var matches 1.. if score #count var matches 0 run item replace block 0 0 0 container.0 with stick" + empty_insert_item_data
    insert_command += "\nexecute if score #any var matches 1.. if score #count var matches 1.. run data modify block 1 1 0 front_text.messages[0] set from block 0 0 0 Items[0].components.\"minecraft:item_name\""
    insert_command += """\nexecute if score #any var matches 1.. if score #count var matches 1.. run data modify block 1 1 0 front_text.messages[1] set value [{"text":" (","italic":false,"color":"gray"},{"score":{"name":"#count","objective":"var"},"italic":false,"color":"white"},{"text":")","italic":false,"color":"gray"}]"""
    insert_command += """\nexecute if score #any var matches 1.. if score #count var matches 1.. run data modify block 1 1 0 front_text.messages[2] set value [{"nbt":"front_text.messages[0]","block":"1 1 0","interpret":true},{"nbt":"front_text.messages[1]","block":"1 1 0","interpret":true}]"""
    insert_command += "\nexecute if score #any var matches 1.. if score #count var matches 1.. run data modify block 0 0 0 Items[0].components.\"minecraft:item_name\" set from block 1 1 0 front_text.messages[2]"

    insert_command += "\nloot insert ~ ~ ~ mine 0 0 0 minecraft:stone[custom_data={drop_contents:1b}]"
    generator.writeFunction(path + "/insert", insert_command)

    discover_command = "give @s " + discover_item
    generator.writeFunction(path + "/discover", discover_command)

    unlock_command = "give @s " + unlock_item
    unlock_command += f"\nitem replace entity @s[tag=!fast_open] weapon.offhand with minecraft:totem_of_undying[{item_model}]"
    unlock_command += "\neffect give @s[tag=!fast_open] minecraft:instant_damage 1 100"
    unlock_command += "\nscoreboard players set #change var 1"
    unlock_command += "\ndata merge block 0 0 0 {}"
    unlock_command += "\nitem replace block 0 0 0 container.0 from entity @s enderchest.0"
    unlock_command += f"\nfunction cards:{card['type']}/{card['element']}/{card['name']}/change"
    unlock_command += f"\nitem replace entity @s enderchest.0 from block 0 0 0 container.0"
    
    generator.writeFunction(path + "/unlock", unlock_command)

    change_command = "execute store result score #count var run data get block 0 0 0 Items[0].components.\"minecraft:custom_data\".Collection[{id:" + str(card['model_id']) + "}].count"
    change_command += "\nscoreboard players operation #count var += #change var"
    change_command += "\nexecute unless data block 0 0 0 Items[0].components.\"minecraft:custom_data\".Collection[{id:" + str(card['model_id']) + "}] run data modify block 0 0 0 Items[0].components.\"minecraft:custom_data\".Collection append value {count:0,id:" + str(card['model_id']) + "}"
    change_command += "\nexecute store result block 0 0 0 Items[0].components.\"minecraft:custom_data\".Collection[{id:" + str(card['model_id']) + "}].count int 1 run scoreboard players get #count var"
    generator.writeFunction(path + "/change", change_command)

    collection_command = "scoreboard players set #change var -1"
    collection_command += f"\nfunction cards:{card['type']}/{card['element']}/{card['name']}/give"
    collection_command += f"\nfunction cards:{card['type']}/{card['element']}/{card['name']}/change"
    
    generator.writeFunction(path + "/collection", collection_command)

    lore = lore.replace("\"","\\\"")



    card["use"] = r"""{"underlined":true,"translate":"card.""" + card["name"]+ '"' + r""","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":""" + item_name.replace("item_name=","") + r""","minecraft:lore":""" + tellraw_lore + r"""}}}"""


    #tellraw @p {"text":"Card","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:carrot_on_a_stick","Count":1,"tag":"{HideFlags:127,display:{Lore:['','[{\\\"translate\\\":\\\"cost\\\",\\\"italic\\\":false,\\\"color\\\":\\\"white\\\"},{\\\"text\\\":\\\" 3\\\",\\\"italic\\\":false,\\\"color\\\":\\\"white\\\"}]','{\\\"text\\\":\\\"\\\",\\\"color\\\":\\\"white\\\",\\\"italic\\\":false}','{\\\"translate\\\":\\\"card.anvil.lore.0\\\",\\\"color\\\":\\\"white\\\",\\\"italic\\\":false}','{\\\"translate\\\":\\\"card.anvil.lore.1\\\",\\\"color\\\":\\\"white\\\",\\\"italic\\\":false}'],Name:\"{\\\"translate\\\":\\\"card.anvil\\\",\\\"italic\\\":false,\\\"color\\\":\\\"green\\\"}\"}}"}}}


    #tellraw @p {"text":"a","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:carrot_on_a_stick","Count":1,"tag":"{HideFlags:127,display:{Lore:[\"\",\"[{\\\"translate\\\":\\\"cost\\\",\\\"italic\\\":false,\\\"color\\\":\\\"white\\\"},{\\\"text\\\":\\\" 3\\\",\\\"italic\\\":false,\\\"color\\\":\\\"white\\\"}]\",\"{\\\"text\\\":\\\"\\\",\\\"color\\\":\\\"white\\\",\\\"italic\\\":false}\",\"{\\\"translate\\\":\\\"card.anvil.lore.0\\\",\\\"color\\\":\\\"white\\\",\\\"italic\\\":false}\",\"{\\\"translate\\\":\\\"card.anvil.lore.1\\\",\\\"color\\\":\\\"white\\\",\\\"italic\\\":false}\"],Name:\"{\\\"translate\\\":\\\"card.anvil\\\",\\\"italic\\\":false,\\\"color\\\":\\\"green\\\"}\"}}"}}}

    #print(f'tellraw @p {card["use"]}')

    #pause = input()

    if card['type'] == "entity":
        createEntityCard(card, path)
        #### PRINT DRAFT GIVE
        #print(f"execute if score #rand var matches {card['model_id']} run function cards:entity/{card['element']}/{card['name']}/give")
    elif card['type'] == 'consumable':
        createConsumableCard(card, path)
        #### PRINT DRAFT GIVE
        #print(f"execute if score #rand var matches {card['model_id']} run function cards:consumable/{card['element']}/{card['name']}/give")
    return [card["model_id"], card["name"], card["type"], card["element"], card["rarity"], card["cost"]]

    #print(f'{{"predicate": {{"custom_model_data":{card["model_id"]}}}, "model": "item/cards/{card["name"]}"}},')

def createEntityCard(card, path):



    cost_command = f"execute unless score @s saturation matches {card['cost']}.. run function cards:too_poor"
    cost_command += f"\nexecute if score @s saturation matches {card['cost']}.. run function cards:{card['type']}/{card['element']}/{card['name']}/summon"
    generator.writeFunction(path + "/use",cost_command)

    nbt = ""
    if "extra_nbt" in card.keys():
        nbt = f',{card["extra_nbt"]}'

    data_path = path.replace("./","")

    summon_command = "#Summons the entity (generated)"
    summon_command += f'\nsummon {card["entity"]} ~ ~1 ~ {{PersistenceRequired:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["new","get_id","id","card","{card["name"]}","card.{card["type"]}","card.{card["element"]}","attackable"],Team:"green",data:{{path:"{data_path}"}}{nbt}}}'
    summon_command += "\nexecute if entity @s[tag=player.2] run tp @e[tag=get_id,tag=id,limit=1] ~ ~1 ~ 180 ~"
    summon_command += "\ntag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled"
    summon_command += "\ntag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly"
    summon_command += "\nscoreboard players operation @n[tag=get_id] id = game.id var"
    summon_command += f"\nscoreboard players set @n[tag=get_id] health {card['health']}"
    summon_command += f"\nscoreboard players set @n[tag=get_id] maxHealth {card['maxHealth']}"
    summon_command += f"\nscoreboard players set @n[tag=get_id] attack {card['attack']}"
    summon_command += f"\nscoreboard players set @n[tag=get_id] speed {card['speed']}"
    summon_command += f"\nscoreboard players set @n[tag=get_id] range {card['range']}"

    card["traits"] = []

    if  "flying" in card.keys() and card['flying']:
        summon_command += f"\ntag @n[tag=get_id] add flying"
        card["traits"].append("flying")

    if  "fire_proof" in card.keys() and card['fire_proof']:
        summon_command += f"\ntag @n[tag=get_id] add fire_proof"
        card["traits"].append("fire")

    if  "emerald" in card.keys() and card['emerald']:
        summon_command += f"\ntag @n[tag=get_id] add emerald"
        card["traits"].append("emerald")

    if  "gold" in card.keys() and card['gold']:
        summon_command += f"\ntag @n[tag=get_id] add gold"
        card["traits"].append("gold")
    
    if  "passive" in card.keys() and card['passive']:
        summon_command += f"\ntag @n[tag=get_id] add passive"
        card["traits"].append("passive")
    
    if  "lunging" in card.keys() and card['lunging']:
        summon_command += f"\ntag @n[tag=get_id] add lunging"
        card["traits"].append("lunging")

    if  "arthropod" in card.keys() and card['arthropod']:
        summon_command += f"\ntag @n[tag=get_id] add arthropod"
        card["traits"].append("arthropod")
            
    if  "frozen" in card.keys() and card['frozen']:
        summon_command += f"\ntag @n[tag=get_id] add frozen"
        card["traits"].append("frozen")

    if  "evasive" in card.keys() and card['evasive']:
        summon_command += f"\ntag @n[tag=get_id] add evasive"
        card["traits"].append("evasive")

    if  "illager" in card.keys() and card['illager']:
        summon_command += f"\ntag @n[tag=get_id] add illager"
        card["traits"].append("illager")
        
    if  "defensive" in card.keys() and card['defensive']:
        summon_command += f"\ntag @n[tag=get_id] add defensive"
        card["traits"].append("defensive")
    
    if  "water" in card.keys() and card['water']:
        summon_command += f"\ntag @n[tag=get_id] add water"
        card["traits"].append("water")

    if  "teleport" in card.keys() and card['teleport']:
        summon_command += f"\ntag @n[tag=get_id] add teleport"
        card["traits"].append("teleport")

    if  "meleeImmune" in card.keys() and card['meleeImmune']:
        summon_command += f"\ntag @n[tag=get_id] add meleeImmune"

    if  "armor" in card.keys():
        summon_command += f"\nscoreboard players set @n[tag=get_id] armor {card['armor']}"
    else:
        card["armor"] = 0

    if  "apply_fire" in card.keys():
        summon_command += f"\nscoreboard players set @n[tag=get_id] apply_fire {card['apply_fire']}"

    if  "apply_poison" in card.keys():
        summon_command += f"\nscoreboard players set @n[tag=get_id] apply_poison {card['apply_poison']}"

    if  "apply_wither" in card.keys():
        summon_command += f"\nscoreboard players set @n[tag=get_id] apply_wither {card['apply_wither']}"

    if  "special_attack" in card.keys() and card['special_attack']:
        summon_command += f"\ntag @n[tag=get_id] add special_attack"

    if  "ambush" in card.keys() and card['ambush']:
        summon_command += f"\ntag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add movable"
        card["traits"].append("ambush")
    else:
        summon_command += f"\ntag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable"

    if  "wither_proof" in card.keys() and card['wither_proof']:
        summon_command += f"\ntag @n[tag=get_id] add wither_proof"
        card["traits"].append("wither")

    if  "undead" in card.keys() and card['undead']:
        summon_command += f"\ntag @n[tag=get_id] add undead"
        card["traits"].append("undead")

    if  "unselectable" in card.keys() and card['unselectable']:
        summon_command += f"\ntag @n[tag=get_id] add unselectable"

    if  "unbuffable" in card.keys() and card['unbuffable']:
        summon_command += f"\ntag @n[tag=get_id] add unbuffable"

    if  "needs_vibration" in card.keys() and card['needs_vibration']:
        summon_command += f"\ntag @n[tag=get_id] add needs_vibration"
    
    if  "can_attack_friendly" in card.keys() and card['can_attack_friendly']:
        summon_command += f"\ntag @n[tag=get_id] add can_attack_friendly"

    # Fills up trait list with empty textures for safety
    card["traits"].extend(["empty","empty","empty","empty","empty","empty"])

    summon_command += f'\ntellraw @a[tag=id] [{{"selector":"@s"}},{{text:" "}},{{"translate":"entity.spawns"}},{{text:" "}},{card["use"]}]'
    summon_command += f'\ntag @e[tag=get_id,limit=1] add moving'
    summon_command += f'\ntag @e[type=armor_stand,tag=board,tag=trap,tag=id,limit=1,distance=..0.5] add destination'
    summon_command += f'\nexecute as @e[type=armor_stand,tag=board,tag=destination] unless entity @e[tag=card.entity,tag=get_id,tag=id,limit=1,sort=nearest,tag=flying] at @s run function cards:consumable/defend/trap/trigger_dict'
    summon_command += f'\ntag @e[type=armor_stand,tag=id] remove destination'
    summon_command += f'\ntag @e[tag=get_id] remove moving'
    summon_command += "\ntag @e[tag=get_id] remove get_id"
    if card['cost'] >= 0:
        summon_command += f"\nscoreboard players remove @s saturation {card['cost']}"
    summon_command += f"\nfunction cards:entity/{card['element']}/{card['name']}/summon_display"
    summon_command += f"\nfunction main:player/use_card/store"
    summon_command += f"\nscoreboard players add @s play.{card['element']} 1"
    generator.writeFunction(path + "/summon",summon_command)

    makeEntityModelJson(card, path)

    pass

def createConsumableCard(card, path):

    
    data_path = path.replace("./","")

    cost_command = f"execute unless score @s saturation matches {card['cost']}.. run function cards:too_poor"
    cost_command += f"\nexecute if score @s saturation matches {card['cost']}.. run function cards:{card['type']}/{card['element']}/{card['name']}/cast"
    generator.writeFunction(path + "/use",cost_command)

    cast_command = '# Casts the consumable card'

    if  "hide" in card.keys() and card['hide']: # Hide traps if flag is set
        trigger_command = f'\ntellraw @a[tag=id] [{{"selector":"@s"}},{{text:" "}},{{"translate":"move.trap_trigger"}},{{text:" "}},{card["use"]}]'
        generator.writeFunction(path + "/trigger_message",trigger_command)
    elif card['placement'] == "anywhere_filled" or card['placement'] == "anywhere_friendly" or card['placement'] == "anywhere_friendly_moved" or card['placement'] == "emerald":
        cast_command += f'\nexecute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] run tellraw @a[tag=id] [{{"selector":"@s"}},{{text:" "}},{{"translate":"cast.use"}},{{text:" "}},{card["use"]},{{text:" "}},{{"translate":"on"}},{{text:" "}},{{"selector":"@e[tag=card.entity,tag=id,limit=1,sort=nearest]"}}]'
    else:
        cast_command += f'\ntellraw @a[tag=id] [{{"selector":"@s"}},{{text:" "}},{{"translate":"cast.use"}},{{text:" "}},{card["use"]}]'

    if  "building" in card.keys(): # Building
        cast_command += f'\nsummon armor_stand ~ ~1 ~ {{CustomName:{{"translate":"card.{card["name"]}"}},Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["new","get_id","id","card","{card["name"]}","card.building","card.defend","attackable"],Team:"green",data:{{path:"{data_path}"}}}}'
        cast_command += "\ntag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add filled"
        cast_command += "\ntag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add blocked"
        cast_command += "\ntag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add block"
        cast_command += "\ntag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] add friendly"
        cast_command += f"\ntag @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest] remove movable"
        cast_command += "\nscoreboard players operation @n[tag=get_id] id = game.id var"
        cast_command += f"\nscoreboard players set @n[tag=get_id] health {card['building']['health']}"
        cast_command += f"\nscoreboard players set @n[tag=get_id] maxHealth {card['building']['maxHealth']}"

        if  "armor" in card['building'].keys():
            cast_command += f"\nscoreboard players set @n[tag=get_id] armor {card['building']['armor']}"
        else:
            card['building']["armor"] = 0
            pass

        if  "fire_proof" in card['building'].keys() and card['building']['fire_proof']:
            cast_command += f"\ntag @n[tag=get_id] add fire_proof"
        else:
            pass


        cast_command += "\ntag @e[tag=get_id] remove get_id"

    else:
        pass

    if card['cost'] >= 0:
        cast_command += f"\nscoreboard players remove @s saturation {card['cost']}"
    cast_command += f"\nfunction cards:{card['type']}/{card['element']}/{card['name']}/activate"
    cast_command += f"\nfunction main:player/use_card/store"
    generator.writeFunction(path + "/cast",cast_command)

    makeConsumableModelJson(card, path)

    pass

def makeEntityModelJson(card, path):
    model = {
	      "credit": "Made with Brickbench",
	      "parent": "item/cards/template",
	      "textures": {
		        "background": f"item/card/{card['name']}/background",
		        "foreground": f"item/card/{card['name']}/foreground",
		        "description": f"item/card/{card['name']}/description",
		        "cost": f"item/card/number/left/{card['cost']}",
		        "health": f"item/card/number/right/{card['health']}",
		        "attack": f"item/card/number/left/{card['attack']}",
		        "armor": f"item/card/number/right/{card['armor']}",
                "speed": f"item/card/number/left/{card['speed']}",
                "range": f"item/card/number/right/{card['range']}",
                "rarity": f"item/card/front_{card['rarity']}",
                "trait_1": f"item/card/trait/{card['traits'][0]}",
                "trait_2": f"item/card/trait/{card['traits'][1]}",
                "trait_3": f"item/card/trait/{card['traits'][2]}",
                "trait_4": f"item/card/trait/{card['traits'][3]}",
                "trait_5": f"item/card/trait/{card['traits'][4]}",
                "trait_6": f"item/card/trait/{card['traits'][5]}",
                "type":"item/card/trait/entity"
                
	         }
          }
    #print(model)
    with open(f'./models/{card["name"]}.json', 'w') as outfile:
        json.dump(model,outfile)

def makeConsumableModelJson(card, path):

    if  "building" in card.keys():
        model = {
    	      "credit": "Made with Brickbench",
    	      "parent": "item/cards/building_template",
    	      "textures": {
    		        "background": f"item/card/{card['name']}/background",
    		        "foreground": f"item/card/{card['name']}/foreground",
    		        "description": f"item/card/{card['name']}/description",
    		        "cost": f"item/card/number/left/{card['cost']}",
                    "health": f"item/card/number/right/{card['building']['health']}",
                    "armor": f"item/card/number/right/{card['building']['armor']}",
                    "rarity": f"item/card/front_{card['rarity']}",
                    "type":"item/card/trait/building"
    	         }
              }
    elif "hide" in card.keys() and card['hide']:
        model = {
        "credit": "Made with Brickbench",
        "parent": "item/cards/consumable_template",
        "textures": {
              "background": f"item/card/{card['name']}/background",
              "foreground": f"item/card/{card['name']}/foreground",
              "description": f"item/card/{card['name']}/description",
              "cost": f"item/card/number/left/{card['cost']}",
              "rarity": f"item/card/front_{card['rarity']}",
              "type":f"item/card/trait/trap"
           }
        }
    else:
        model = {
        "credit": "Made with Brickbench",
        "parent": "item/cards/consumable_template",
        "textures": {
              "background": f"item/card/{card['name']}/background",
              "foreground": f"item/card/{card['name']}/foreground",
              "description": f"item/card/{card['name']}/description",
              "cost": f"item/card/number/left/{card['cost']}",
              "rarity": f"item/card/front_{card['rarity']}",
              "type":f"item/card/trait/{card['element']}"
           }
        }
    #print(model)
    with open(f'./models/{card["name"]}.json', 'w') as outfile:
        json.dump(model,outfile)



types = generator.listFolder("./yaml/")

type_list = []
collection = []

use_command = "#Origin point of card tree (generated)"

hover_command = "#Origin point of card tree (generated)\n"
hover_command += "execute store result score #id var run data get entity @s SelectedItem.components.\"minecraft:custom_data\".card.id"

for type in types:
    type_list.append(type)
    subtypes = generator.listFolder(f"./yaml/{type}/")
    subtype_list = []

    for subtype in subtypes:
        subtype_list.append(subtype)
        card_list = []
        cards = generator.listFolder(f"./yaml/{type}/{subtype}/")

        for card in cards:
            card_list.append(card)
            #print(f"Generating card: {card}")
            new_card = createCard(f"./yaml/{type}/{subtype}/{card}")
            collection.append(new_card)
            use_command += f'\nexecute if score #id var matches {new_card[0]} run function cards:{type}/{subtype}/{new_card[1]}/use'
            hover_command += f'\nexecute if score #id var matches {new_card[0]} run function cards:{type}/{subtype}/{new_card[1]}/hover'
            pass

        if type == "entity":
            death_card_command = "#deaths for entities (generated)"
            capture_card_command = "#capture for entities (generated)"
            attack_card_command = "#attack for entities (generated)"
            damage_card_command = "#damage for entities (generated)"
            move_card_command = "#move for entities (generated)"
            turn_card_command = "#end turn for entities (generated)"
            give_card_command = "#give card (gen)"
            for item in card_list:
                item = item.replace(".yaml","")
                death_card_command += f'\nexecute if entity @s[tag={item}] run function cards:entity/{subtype}/{item}/death'
                capture_card_command += f'\nexecute if entity @s[tag={item}] as @p[tag=id,tag=turn] run function cards:entity/{subtype}/{item}/discover'
                attack_card_command += f'\nexecute if entity @s[tag={item}] run function cards:entity/{subtype}/{item}/attack'
                damage_card_command += f'\nexecute if entity @s[tag={item}] run function cards:entity/{subtype}/{item}/damage'
                move_card_command += f'\nexecute if entity @s[tag={item}] run function cards:entity/{subtype}/{item}/move'
                turn_card_command += f'\nexecute if entity @s[tag={item}] run function cards:entity/{subtype}/{item}/end_turn'
                give_card_command += f'\nfunction cards:entity/{subtype}/{item}/give'
                #use_command += f''
                #hover_command += f'\nexecute if score #id var matches {} run function cards:{type}/{subtype}/{item}/hover'
                

            #generator.writeFunction(f"./{type}/{subtype}/death_dict",death_card_command)
            #generator.writeFunction(f"./{type}/{subtype}/capture_dict",capture_card_command)
            #generator.writeFunction(f"./{type}/{subtype}/attack_dict",attack_card_command)
            #generator.writeFunction(f"./{type}/{subtype}/damage_dict",damage_card_command)
            #generator.writeFunction(f"./{type}/{subtype}/move_dict",move_card_command)
            #generator.writeFunction(f"./{type}/{subtype}/end_turn_dict",turn_card_command)
            generator.writeFunction(f"./{type}/{subtype}/give",give_card_command)
        pass

    use_subtype_command = "#subtypes in card use tree (generated)"
    hover_subtype_command = "#subtypes in card hover tree (generated)"

    #for item in subtype_list:
    #    use_subtype_command += f'\nexecute if entity @s[nbt={{SelectedItem:{{tag:{{card:{{element:"{item}"}}}}}}}}] run function cards:{type}/{item}/use'
    #    hover_subtype_command += f'\nexecute if entity @s[nbt={{SelectedItem:{{tag:{{card:{{element:"{item}"}}}}}}}}] run function cards:{type}/{subtype}/{item}/hover'
    #
    #    #print(item)

    generator.writeFunction(f"./{type}/use",use_subtype_command)
    generator.writeFunction(f"./{type}/hover",hover_subtype_command)

    if type == "entity":
        death_subtype_command = "#deaths for entities (generated)"
        capture_subtype_command = "#capture for entities (generated)"
        attack_subtype_command = "#attack for entities (generated)"
        damage_subtype_command = "#damage for entities (generated)"
        move_subtype_command = "#move for entities (generated)"
        turn_subtype_command = "#end turn for entities (generated)"
        for item in subtype_list:
            death_subtype_command += f'\nexecute if entity @s[tag=card.{item}] run function cards:entity/{item}/death_dict'
            capture_subtype_command += f'\nexecute if entity @s[tag=card.{item}] run function cards:entity/{item}/capture_dict'
            attack_subtype_command += f'\nexecute if entity @s[tag=card.{item}] run function cards:entity/{item}/attack_dict'
            damage_subtype_command += f'\nexecute if entity @s[tag=card.{item}] run function cards:entity/{item}/damage_dict'
            move_subtype_command += f'\nexecute if entity @s[tag=card.{item}] run function cards:entity/{item}/move_dict'
            turn_subtype_command += f'\nexecute if entity @s[tag=card.{item}] run function cards:entity/{item}/end_turn_dict'
        #generator.writeFunction(f"./{type}/death_dict",death_subtype_command)
        #generator.writeFunction(f"./{type}/capture_dict",capture_subtype_command)
        #generator.writeFunction(f"./{type}/attack_dict",attack_subtype_command)
        #generator.writeFunction(f"./{type}/damage_dict",damage_subtype_command)
        #generator.writeFunction(f"./{type}/move_dict",move_subtype_command)
        #generator.writeFunction(f"./{type}/end_turn_dict",turn_subtype_command)

    pass


use_command += "\nscoreboard players reset @s rightClick"
use_command += "\nscoreboard players add @s play.card.turn 1"

generator.writeFunction("./use",use_command)

generator.writeFunction("./hover",hover_command)

#return [card["model_id"], card["name"], card["type"], card["element"], card["rarity"], card["cost"]]
# Sorting methods
def id(val):
    return val[0]

def name(val):
    return val[1]

def rarity(val):
    if val[4] == "common":
        return 0
    if val[4] == "uncommon":
        return 1
    if val[4] == "rare":
        return 2
    if val[4] == "epic":
        return 3
    if val[4] == "legendary":
        return 4
    return -1
    
def cost(val):
    return val[5]
collection.sort(key=id)

def stype(val):
    if val[3] == "overworld":
        return 0
    if val[3] == "nether":
        return 1
    if val[3] == "end":
        return 2
    if val[3] == "attack":
        return 3
    if val[3] == "buff":
        return 4
    if val[3] == "defend":
        return 5
    return -1

## Collection click dict
collection_command = "## Dictionary for collection clicking"
for card in collection:
    # print(card)
    collection_command += f"\nexecute store result score #pass var run clear @s carrot_on_a_stick[custom_data~{{gui:True}},item_model=\"cards/" + card[1] + "\"] 1"
    collection_command += f"\nexecute if score #pass var matches 1 run function cards:{card[2]}/{card[3]}/{card[1]}/collection"
    pass
generator.writeFunction("./collection_dict" , collection_command)

## Collection Store dict
store_command = "## Dictionary for collection Storing"
store_command += "\nexecute store result score #card_id var run data get block 0 0 1 Items[0].components.\"minecraft:custom_data\".card.id"

for card in collection:
    store_command += f"\nexecute if score #card_id var matches {card[0]} run function cards:{card[2]}/{card[3]}/{card[1]}/change"
    pass
generator.writeFunction("./store_dict" , store_command)

# Sort for storage display
collection.sort(key=name)
collection.sort(key=cost)
collection.sort(key=rarity)

sorted_rcn = "## Sorted view of cards"
index = 0
page = 0
for card in collection:
    if card[4] == "unknown":
        continue
    index += 1
    if index <= 27:
        sorted_rcn += f"\nfunction cards:{card[2]}/{card[3]}/{card[1]}/insert"
        continue
    elif index > 27 and index <= 45:
        sorted_rcn += f"\nexecute positioned ~1 ~ ~ run function cards:{card[2]}/{card[3]}/{card[1]}/insert"
        continue
    elif index > 45:
        generator.writeFunction("./sorted/rcn_" + str(page), sorted_rcn)
        sorted_rcn = "## Sorted view of cards"
        sorted_rcn += f"\nfunction cards:{card[2]}/{card[3]}/{card[1]}/insert"
        page += 1
        index = 1
        continue

generator.writeFunction("./sorted/rcn_" + str(page), sorted_rcn)
    
collection.sort(key=name)
collection.sort(key=rarity)
collection.sort(key=cost)

sorted_crn = "## Sorted view of cards"
index = 0
page = 0
for card in collection:
    if card[4] == "unknown":
        continue
    index += 1
    if index <= 27:
        sorted_crn += f"\nfunction cards:{card[2]}/{card[3]}/{card[1]}/insert"
        continue
    elif index > 27 and index <= 45:
        sorted_crn += f"\nexecute positioned ~1 ~ ~ run function cards:{card[2]}/{card[3]}/{card[1]}/insert"
        continue
    elif index > 45:
        generator.writeFunction("./sorted/crn_" + str(page), sorted_crn)
        sorted_crn = "## Sorted view of cards"
        sorted_crn += f"\nfunction cards:{card[2]}/{card[3]}/{card[1]}/insert"
        page += 1
        index = 1
        continue

generator.writeFunction("./sorted/crn_" + str(page), sorted_crn)



collection.sort(key=cost)
collection.sort(key=rarity)
collection.sort(key=name)

sorted_nrc = "## Sorted view of cards"
index = 0
page = 0
for card in collection:
    if card[4] == "unknown":
        continue
    index += 1
    if index <= 27:
        sorted_nrc += f"\nfunction cards:{card[2]}/{card[3]}/{card[1]}/insert"
        continue
    elif index > 27 and index <= 45:
        sorted_nrc += f"\nexecute positioned ~1 ~ ~ run function cards:{card[2]}/{card[3]}/{card[1]}/insert"
        continue
    elif index > 45:
        generator.writeFunction("./sorted/nrc_" + str(page), sorted_nrc)
        sorted_nrc = "## Sorted view of cards"
        sorted_nrc += f"\nfunction cards:{card[2]}/{card[3]}/{card[1]}/insert"
        page += 1
        index = 1
        continue

generator.writeFunction("./sorted/nrc_" + str(page), sorted_nrc)

collection.sort(key=rarity)
collection.sort(key=cost)
collection.sort(key=stype)

sorted_tcr = "## Sorted view of cards"
index = 0
page = 0
for card in collection:
    if card[4] == "unknown":
        continue
    index += 1
    if index <= 27:
        sorted_tcr += f"\nfunction cards:{card[2]}/{card[3]}/{card[1]}/insert"
        continue
    elif index > 27 and index <= 45:
        sorted_tcr += f"\nexecute positioned ~1 ~ ~ run function cards:{card[2]}/{card[3]}/{card[1]}/insert"
        continue
    elif index > 45:
        generator.writeFunction("./sorted/tcr_" + str(page), sorted_tcr)
        sorted_tcr = "## Sorted view of cards"
        sorted_tcr += f"\nfunction cards:{card[2]}/{card[3]}/{card[1]}/insert"
        page += 1
        index = 1
        continue

generator.writeFunction("./sorted/tcr_" + str(page), sorted_tcr)

## Draft Mode function
draft = "## Sorted view of cards"
draft += "\nexecute store result score #rand var run loot spawn 0 -200 0 loot cards:rand_card"
index = 0
page = 0
for card in collection:
    if card[4] == "unknown":
        continue
    index += 1
    draft += f"\nexecute if score #rand var matches {index} run function cards:{card[2]}/{card[3]}/{card[1]}/give"

generator.writeFunction("./draft", draft)

## Pack Opening randomness and tournament deck
pack_open = "## Sorted view of cards"
pack_open += "\nexecute store result score #rand var run random value 1..631"
index = 0
page = 0
tournament_deck = []
for card in collection:
    #print(card)
    if card[4] == "unknown":
        continue
    if card[4] == "common":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+4} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 4
        tournament_deck.append("{id:" + str(card[0]) + ",count:5}")
        continue
    if card[4] == "uncommon":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+3} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 3
        tournament_deck.append("{id:" + str(card[0]) + ",count:4}")
        continue
    if card[4] == "rare":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+2} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 2
        tournament_deck.append("{id:" + str(card[0]) + ",count:3}")
        continue
    if card[4] == "epic":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+1} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 1
        tournament_deck.append("{id:" + str(card[0]) + ",count:2}")
        continue
    if card[4] == "legendary":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        tournament_deck.append("{id:" + str(card[0]) + ",count:1}")
        continue
    
tournament_deck = f"""data modify block 0 0 0 Items[0].components."minecraft:custom_data".Collection set value {str(tournament_deck).replace("'","")}"""
generator.writeFunction("./tournament_give", tournament_deck)

generator.writeFunction("./pack_open", pack_open)

# Attack Pack
## Pack Opening randomness and tournament deck
pack_open = "## Sorted view of cards"
pack_open += "\nexecute store result score #rand var run loot spawn 0 -200 0 loot cards:open/1"
index = 0
page = 0
for card in collection:
    if card[3] != "attack":
        continue
    if card[4] == "unknown":
        continue
    if card[4] == "common":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+4} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 4
        continue
    if card[4] == "uncommon":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+3} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 3
        continue
    if card[4] == "rare":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+2} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 2
        continue
    if card[4] == "epic":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+1} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 1
        continue
    if card[4] == "legendary":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        continue

generator.writeFunction("./open/1", pack_open)

# Defensive Pack
## Pack Opening randomness and tournament deck
pack_open = "## Sorted view of cards"
pack_open += "\nexecute store result score #rand var run loot spawn 0 -200 0 loot cards:open/2"
index = 0
page = 0
for card in collection:
    if card[3] != "defend":
        continue
    if card[4] == "unknown":
        continue
    if card[4] == "common":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+4} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 4
        continue
    if card[4] == "uncommon":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+3} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 3
        continue
    if card[4] == "rare":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+2} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 2
        continue
    if card[4] == "epic":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+1} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 1
        continue
    if card[4] == "legendary":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        continue

generator.writeFunction("./open/2", pack_open)

# Buff Pack
## Pack Opening randomness and tournament deck
pack_open = "## Sorted view of cards"
pack_open += "\nexecute store result score #rand var run loot spawn 0 -200 0 loot cards:open/3"
index = 0
page = 0
for card in collection:
    if card[3] != "buff":
        continue
    if card[4] == "unknown":
        continue
    if card[4] == "common":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+4} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 4
        continue
    if card[4] == "uncommon":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+3} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 3
        continue
    if card[4] == "rare":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+2} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 2
        continue
    if card[4] == "epic":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index}..{index+1} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        index += 1
        continue
    if card[4] == "legendary":
        index += 1
        pack_open += f"\nexecute if score #rand var matches {index} run function cards:{card[2]}/{card[3]}/{card[1]}/unlock"
        continue

generator.writeFunction("./open/3", pack_open)