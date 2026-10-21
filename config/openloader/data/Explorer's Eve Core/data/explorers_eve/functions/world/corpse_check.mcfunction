#Corpse effects!
tag @e[type=item,distance=..4,nbt={Item:{id:"blue_skies:ethereal_arc"}}] add CorpseArc
tag @e[type=item,distance=..4,nbt={Item:{id:"blue_skies:dusk_arc"}}] add CorpseArc
tag @e[type=item,distance=..4,nbt={Item:{id:"blue_skies:nature_arc"}}] add CorpseArc
tag @e[type=item,distance=..4,nbt={Item:{id:"blue_skies:poison_arc"}}] add CorpseArc
tag @e[type=item,distance=..4,nbt={Item:{id:"blue_skies:life_arc"}}] add CorpseArc
tag @e[type=item,distance=..4,nbt={Item:{id:"blue_skies:aquatic_arc"}}] add CorpseArc
tag @e[type=item,distance=..4,nbt={Item:{id:"blue_skies:runic_arc"}}] add CorpseArc
execute as @e[tag=CorpseArc] run data modify entity @e[type=corpse:corpse,limit=1,sort=nearest] Death.Items append from entity @s Item
kill @e[tag=CorpseArc]

#If in the End, go somewhere else!
execute if dimension minecraft:the_end run function explorers_eve:world/end_corpse

#Save the player's UUID!
execute store result score @s UUID run data get entity @s Death.PlayerUuid[0]

data merge entity @s {Glowing:1b}
tag @s add CorpseChecked