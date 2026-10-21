#Apply attributes.
attribute @s minecraft:generic.follow_range base set 200
attribute @s minecraft:generic.movement_speed modifier add 1d52604f-3438-43cb-b668-ad31de8430d7 BonusSpeed 0.01 add
attribute @s minecraft:generic.max_health modifier add 1d57904f-3428-43cb-b268-ad31de8430d7 BonusHealth 20 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get

#Apply strength so it doesn't die.
effect give @s strength 60 0

#No drops!
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

#Be owned!
data modify entity @s Owner set from entity @p UUID

#They also get weapons.
loot replace entity @s weapon.mainhand loot explorers_eve:bowels_zombie_weapons
function explorers_eve:command_block/mobs/armor

#Sends the entity at a random angle.
scoreboard players set @s RandomRange 40
function explorers_eve:random
scoreboard players remove @s RandomValue 20
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 40
function explorers_eve:random
scoreboard players remove @s RandomValue 20
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s RandomValue

data modify entity @s Motion[1] set value 0.25d

#Fix tags.
tag @s remove ScepterZombie