#Apply attributes.
attribute @s minecraft:generic.follow_range base set 75

#Apply effects.
effect give @s slow_falling 3 0 true

#No drops!
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

#Fix tags.
tag @s remove NewMinion

#Sends the entity at a random angle.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s RandomValue

data modify entity @s Motion[1] set value 0.5d