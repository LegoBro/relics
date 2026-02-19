## Attack has failed

#tellraw @a[tag=id] [{text:"",color:red},{selector:"@n[tag=attacker,tag=id,distance=..100]"}," ",{translate:"attack.fail"}]
tellraw @a[tag=id] {"translate":"attack.fail",color:red,"with":[{selector:"@n[tag=attacker,tag=id,distance=..100]"}]}